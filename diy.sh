#!/bin/bash
# 修改默认IP
sed -i 's/192.168.1.1/192.168.22.1/g' package/base-files/files/bin/config_generate

#集成DDNSto
echo >> feeds.conf.default
echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
./scripts/feeds update nas
./scripts/feeds install -a -p nas