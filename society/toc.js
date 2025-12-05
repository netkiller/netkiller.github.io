// Populate the sidebar
//
// This is a script, and not included directly in the page, to control the total size of the book.
// The TOC contains an entry for each page, so if each page includes a copy of the TOC,
// the total size of the page becomes O(n**2).
class MDBookSidebarScrollbox extends HTMLElement {
    constructor() {
        super();
    }
    connectedCallback() {
        this.innerHTML = '<ol class="chapter"><li class="chapter-item expanded affix "><li class="part-title">职场</li><li class="chapter-item expanded "><a href="职场/除了「体力劳动」和「脑力劳动」你还有其他选择.html"><strong aria-hidden="true">1.</strong> 除了「体力劳动」和「脑力劳动」你还有其他选择</a></li><li class="chapter-item expanded "><a href="职场/等我有钱了.html"><strong aria-hidden="true">2.</strong> 等我有钱了……</a></li><li class="chapter-item expanded affix "><li class="part-title">社会</li><li class="chapter-item expanded "><a href="社会学/穷人被锁死在社会底层的根源是什么.html"><strong aria-hidden="true">3.</strong> 穷人被锁死在社会底层的根源是什么</a></li><li class="chapter-item expanded "><a href="社会学/今天我退群了.html"><strong aria-hidden="true">4.</strong> 今天我退群了</a></li><li class="chapter-item expanded "><a href="社会学/衣食住行/大龄剩女.html"><strong aria-hidden="true">5.</strong> 大龄剩女</a></li><li class="chapter-item expanded "><a href="社会学/衣食住行/预制菜.html"><strong aria-hidden="true">6.</strong> 预制菜·干净·健康又卫生</a></li><li class="chapter-item expanded "><a href="社会学/防止形成规模性返乡滞乡.html"><strong aria-hidden="true">7.</strong> 防止形成规模性返乡滞乡</a></li><li class="chapter-item expanded affix "><li class="part-title">认知</li><li class="chapter-item expanded "><a href="认知/上班和要饭有什么区别.html"><strong aria-hidden="true">8.</strong> 上班和要饭有什么区别</a></li><li class="chapter-item expanded "><a href="认知/自驱者的原动力是什么.html"><strong aria-hidden="true">9.</strong> 认知/自驱者的原动力是什么</a></li><li class="chapter-item expanded "><a href="src/认知/东西方的差距是从什么时候拉开的.html"><strong aria-hidden="true">10.</strong> 东西方的差距是从什么时候拉开的</a></li><li class="chapter-item expanded affix "><li class="part-title">教育</li><li class="chapter-item expanded "><a href="教育/一篇作文《没钱出去玩的暑假》引起的深度思考.html"><strong aria-hidden="true">11.</strong> 一篇作文《没钱出去玩的暑假》引起的深度思考</a></li><li class="chapter-item expanded "><a href="教育/张雪峰.html"><strong aria-hidden="true">12.</strong> 张雪峰被封的根源是什么？</a></li><li class="chapter-item expanded "><a href="教育/父母被孩子拿捏.html"><strong aria-hidden="true">13.</strong> 情绪喂养/情绪输出/情绪操控/情绪管理/情绪决策？</a></li><li class="chapter-item expanded "><a href="教育/教师的信息茧房.html"><strong aria-hidden="true">14.</strong> 教师的信息茧房</a></li></ol>';
        // Set the current, active page, and reveal it if it's hidden
        let current_page = document.location.href.toString().split("#")[0].split("?")[0];
        if (current_page.endsWith("/")) {
            current_page += "index.html";
        }
        var links = Array.prototype.slice.call(this.querySelectorAll("a"));
        var l = links.length;
        for (var i = 0; i < l; ++i) {
            var link = links[i];
            var href = link.getAttribute("href");
            if (href && !href.startsWith("#") && !/^(?:[a-z+]+:)?\/\//.test(href)) {
                link.href = path_to_root + href;
            }
            // The "index" page is supposed to alias the first chapter in the book.
            if (link.href === current_page || (i === 0 && path_to_root === "" && current_page.endsWith("/index.html"))) {
                link.classList.add("active");
                var parent = link.parentElement;
                if (parent && parent.classList.contains("chapter-item")) {
                    parent.classList.add("expanded");
                }
                while (parent) {
                    if (parent.tagName === "LI" && parent.previousElementSibling) {
                        if (parent.previousElementSibling.classList.contains("chapter-item")) {
                            parent.previousElementSibling.classList.add("expanded");
                        }
                    }
                    parent = parent.parentElement;
                }
            }
        }
        // Track and set sidebar scroll position
        this.addEventListener('click', function(e) {
            if (e.target.tagName === 'A') {
                sessionStorage.setItem('sidebar-scroll', this.scrollTop);
            }
        }, { passive: true });
        var sidebarScrollTop = sessionStorage.getItem('sidebar-scroll');
        sessionStorage.removeItem('sidebar-scroll');
        if (sidebarScrollTop) {
            // preserve sidebar scroll position when navigating via links within sidebar
            this.scrollTop = sidebarScrollTop;
        } else {
            // scroll sidebar to current active section when navigating via "next/previous chapter" buttons
            var activeSection = document.querySelector('#sidebar .active');
            if (activeSection) {
                activeSection.scrollIntoView({ block: 'center' });
            }
        }
        // Toggle buttons
        var sidebarAnchorToggles = document.querySelectorAll('#sidebar a.toggle');
        function toggleSection(ev) {
            ev.currentTarget.parentElement.classList.toggle('expanded');
        }
        Array.from(sidebarAnchorToggles).forEach(function (el) {
            el.addEventListener('click', toggleSection);
        });
    }
}
window.customElements.define("mdbook-sidebar-scrollbox", MDBookSidebarScrollbox);
