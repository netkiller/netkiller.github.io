Release
=======

YUM
---

    yum -y install createrepo
    mkdir -p pub/{5,6}/{i386,x86_64}
    createrepo -p -d -o pub/6/i386 pub/centos/6/i386
    
    cat > /etc/yum.repos.d/netkiller.repo <<EOF
    [netkiller]
    name=Netkiller Free Books
    baseurl=http://www.example.com/pub/$releasever/$basearch/
    enabled=1
    gpgcheck=0
    gpgkey=
    EOF
    
    yum repolist 
    
