#!/bin/bash
case $1 in
        
        clone)
            echo $PWD
			#git clone --depth 1 https://github.com/siropboy/sirpdboy-package
			#git clone --depth 1 https://github.com/kenzok8/openwrt-packages
			#git clone --depth 1 https://github.com/liuran001/openwrt-packages
			#git clone --depth 1 https://github.com/vernesong/OpenClash
			git clone --depth 1 https://github.com/jerrykuku/lua-maxminddb
			git clone --depth 1 https://github.com/jerrykuku/luci-app-vssr
		git)
            git;;
		feeds)
			./scripts/feeds clean
			./scripts/feeds update -a
			./scripts/feeds install -a;;
		init)
            sudo apt update -y
			sudo apt full-upgrade -y
			sudo apt install -y ack antlr3 aria2 asciidoc autoconf automake autopoint binutils bison build-essential 
			sudo apt  install -y bzip2 ccache cmake cpio curl device-tree-compiler fastjar flex gawk gettext gcc-multilib g++-multilib 
			sudo apt  install -y git gperf haveged help2man intltool libc6-dev-i386 libelf-dev libglib2.0-dev libgmp3-dev libltdl-dev 
			sudo apt  install -y libmpc-dev libmpfr-dev libncurses5-dev libncursesw5-dev libreadline-dev libssl-dev libtool lrzsz 
			sudo apt install -y  mkisofs msmtp nano ninja-build p7zip p7zip-full patch pkgconf python2.7 python3 python3-pip libpython3-dev qemu-utils 
			sudo apt install -y rsync scons squashfs-tools subversion swig texinfo uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev
			sudo timedatectl set-timezone "Asia/Shanghai";;
        *)
        echo "非指定参数";;
esac