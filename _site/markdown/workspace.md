# 工作空间设置

写作环境
--------
我喜欢使用Linux作文文档make环境，但编辑文档时通过samba 连接到linux 系统，使用Eclipse 写 XML文档。 安装 Ubuntu 操作系统

    $ sudo apt-get install docbook-xsl
    $ sudo apt-get install xsltproc xmlto
    $ sudo apt-get install make
    $ sudo apt-get install git


# 测试

## book.xml
    
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE subject SYSTEM "/usr/share/xml/docbook/schema/dtd/4.5/docbookx.dtd">
    <book>
    	<bookinfo>
    		<title>An Example Book</title>
    
    		<author>
    			<firstname>Your first name</firstname>
    			<surname>Your surname</surname>
    			<affiliation>
    				<address>
    					<email>foo@example.com</email>
    				</address>
    			</affiliation>
    		</author>
    
    		<copyright>
    			<year>2000</year>
    			<holder>Copyright string here</holder>
    		</copyright>
    
    		<abstract>
    			<para>If your book has an abstract then it should go here.</para>
    		</abstract>
    	</bookinfo>
    
    	<preface>
    		<title>Preface</title>
    
    		<para>Your book may have a preface, in which case it should be placed
    			here.</para>
    	</preface>
    
    	<chapter>
    		<title>My first chapter</title>
    
    		<para>This is the first chapter in my book.</para>
    
    		<section>
    			<title>My first section</title>
    
    			<para>This is the first section in my book.</para>
    		</section>
    
    	</chapter>
    </book>

## 生成 html 文档
### Ubuntu 
    $ xsltproc /usr/share/xml/docbook/stylesheet/nwalsh/xhtml/chunk.xsl book.xml
    Writing pr01.html for preface
    Writing ch01.html for chapter
    Writing index.html for book
    
### FreeBSD
    % xsltproc /usr/local/share/xsl/docbook/xhtml/docbook.xsl book.xml > book.html
    Note: namesp. cut : stripped namespace before processing           An Example Book
    Note: namesp. cut : processing stripped document                   An Example Book

在浏览器中查看book.html是否生成正确

-----

# 工作空间 workspace 设置

    mkdir -p workspace
    cd workspace
    
## HTML文档输出目录    

    mkdir ~/public_html
    
公共文件
--------

    git clone https://github.com/freebook/common.git
    git clone https://github.com/freebook/docbook-xsl.git

项目文件
--------
选择一个你感兴趣的项目，并使用git clone克隆一份代码，你也可以在github Fork 一份

    git clone https://github.com/freebook/Architect.git
    git clone https://github.com/freebook/FreeBSD.git
    git clone https://github.com/freebook/Linux.git
    git clone https://github.com/freebook/CentOS.git 
    git clone https://github.com/freebook/Cryptography.git
    git clone https://github.com/freebook/Multimedia.git
    git clone https://github.com/freebook/Cisco.git
    git clone https://github.com/freebook/H3C.git
    git clone https://github.com/freebook/Network.git
    
    git clone https://github.com/freebook/PHP.git
    git clone https://github.com/freebook/Python.git
    git clone https://github.com/freebook/Perl.git
    git clone https://github.com/freebook/Developer.git
    git clone https://github.com/freebook/Testing.git
    git clone https://github.com/freebook/Docbook.git
    git clone https://github.com/freebook/Version.git
    
    git clone https://github.com/freebook/Database.git    
    git clone https://github.com/freebook/PostgreSQL.git
    git clone https://github.com/freebook/MySQL.git 
    git clone https://github.com/freebook/OpenLDAP.git 

组织网站    
--------
    git clone https://github.com/freebook/freebook.github.io.git    

建立HTML文档
------------

    cd FreeBSD
    make

输出HTML文档
------------

    $ ls ~/public_html/freebsd/
    account.html            freebsd.upgrade.html       nginx.html                   system.html
    alias.html              gateway.html               nginx.http.html              system.network.html
    author.html             httpd.html                 nginx.proxy.html             system.start.html
    cache.html              ibook.epub                 nginx.worker_processes.html  system.terminal.html
    ch01s07.html            images                     ntpd.html                    user.profile.html
    ch04s02.html            index.html                 packages.html                www.html
    ch04s03.html            install.complete.html      passwd.html                  zfs.backup.html
    ch07s02.html            install.html               php-fpm.html                 zfs.basic.html
    ch07s03.html            install.network.html       php.memcache.html            zfs.device.html
    ch08s02.html            install.partitioning.html  pkgng.html                   zfs.export.html
    ch08s03.html            install.password.html      ports.devel.html             zfs.fs.html
    curl.html               install.timezone.html      ports.textproc.html          zfs.get.html
    database.html           ipaddr.html                preface.download.html        zfs.html
    debug.html              lighttpd.html              preface.html                 zfs.io.html
    dns.html                lighttpd.php5.html         reader.html                  zfs.mount.html
    docbook.css             lighttpd.xcache.html       route.html                   zfs.sharing.html
    donations.html          lighttpd.zend.html         rsync.html                   zfs.snapshot.html
    editors.html            logrotate.html             saver.html                   zfs.status.html
    faq.html                logs.html                  shell.html                   zfs.vol.html
    filesystem.html         mysql.html                 snmp.html                    zfs.zpool.html
    filesystem.winfs.html   netstart.html              su.html                      zsh.html
    filesystem。winfs.html  network.html               su.sorry.html
    freebsd.init.html       network.manager.html       sysinstall.html
    freebsd.ports.html      nginx.events.html          system.date.html
    

定期更新
-------
    for project in $(ls -1 .)
    do 
    
    	cd $project
    	pwd
    	git pull
    	cd -
    done 
