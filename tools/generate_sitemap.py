#!/usr/bin/env python3

from __future__ import annotations

import gzip
import subprocess
from datetime import datetime, timezone
from html import escape
from pathlib import Path
from typing import Iterable
from urllib.parse import quote


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_DOMAIN = "www.netkiller.cn"
EXCLUDED_NAMES = {
    "index.nginx-debian.html",
}
EXCLUDED_PREFIXES = (
    "baidu_verify_",
    "google",
)


def read_domain() -> str:
    for candidate in ("CNAME", "CNAME.backup"):
        path = REPO_ROOT / candidate
        if path.exists():
            value = path.read_text(encoding="utf-8").strip()
            if value:
                return value.removeprefix("https://").removeprefix("http://").rstrip("/")
    return DEFAULT_DOMAIN


def is_public_html(path: Path) -> bool:
    if path.name in EXCLUDED_NAMES:
        return False
    if any(path.name.startswith(prefix) for prefix in EXCLUDED_PREFIXES):
        return False
    return path.suffix.lower() in {".html", ".htm"}


def collect_pages() -> list[Path]:
    pages = [path for path in REPO_ROOT.rglob("*") if path.is_file() and is_public_html(path)]
    pages.sort(key=lambda path: path.relative_to(REPO_ROOT).as_posix())
    return pages


def git_lastmod_lookup(pages: Iterable[Path]) -> dict[str, str]:
    wanted = {path.relative_to(REPO_ROOT).as_posix() for path in pages}
    if not wanted:
        return {}

    try:
        result = subprocess.run(
            [
                "git",
                "-c",
                "core.quotepath=false",
                "log",
                "--name-only",
                "--format=__DATE__%cs",
                "--diff-filter=AM",
                "--",
                ".",
            ],
            cwd=REPO_ROOT,
            check=True,
            capture_output=True,
            text=True,
        )
    except (OSError, subprocess.CalledProcessError):
        return {}

    lastmod: dict[str, str] = {}
    current_date: str | None = None
    for raw_line in result.stdout.splitlines():
        line = raw_line.strip()
        if not line:
            continue
        if line.startswith("__DATE__"):
            current_date = line.removeprefix("__DATE__")
            continue
        if current_date and line in wanted and line not in lastmod:
            lastmod[line] = current_date
            if len(lastmod) == len(wanted):
                break
    return lastmod


def fallback_lastmod(path: Path) -> str:
    modified = datetime.fromtimestamp(path.stat().st_mtime, tz=timezone.utc)
    return modified.date().isoformat()


def encode_url(base_url: str, path: Path) -> str:
    relative = path.relative_to(REPO_ROOT)
    quoted = "/".join(quote(part) for part in relative.parts)
    return f"{base_url}/{quoted}"


def build_xml(urls: list[tuple[str, str]]) -> str:
    lines = [
        '<?xml version="1.0" encoding="UTF-8"?>',
        '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">',
    ]
    for loc, lastmod in urls:
        lines.extend(
            [
                "  <url>",
                f"    <loc>{escape(loc)}</loc>",
                f"    <lastmod>{lastmod}</lastmod>",
                "  </url>",
            ]
        )
    lines.append("</urlset>")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    domain = read_domain()
    base_url = f"https://{domain}"
    pages = collect_pages()
    git_lastmod = git_lastmod_lookup(pages)

    urls: list[tuple[str, str]] = []
    for page in pages:
        rel = page.relative_to(REPO_ROOT).as_posix()
        lastmod = git_lastmod.get(rel, fallback_lastmod(page))
        urls.append((encode_url(base_url, page), lastmod))

    sitemap_xml = build_xml(urls)
    sitemap_txt = "\n".join(loc for loc, _ in urls) + "\n"

    (REPO_ROOT / "sitemap.xml").write_text(sitemap_xml, encoding="utf-8")
    (REPO_ROOT / "sitemap.txt").write_text(sitemap_txt, encoding="utf-8")
    with gzip.open(REPO_ROOT / "sitemaps.xml.gz", "wt", encoding="utf-8") as gz_file:
        gz_file.write(sitemap_xml)

    print(f"Generated {len(urls)} URLs for {base_url}")


if __name__ == "__main__":
    main()
