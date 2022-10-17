# 构建小米路由器3G的OpenWRT固件

- OpenWRT-full
  - 主路由固件
  - 仅包含ACC加速，多拨，WOL。
  - 配置文件：r3g.config
- OpenWRT-ap
  - ap接入点固件
  - 包含广告过滤，kms等
  - 配置文件：r3g-ap.config

## 定制配置文件

1、Starred运行一个workflow

2、在workflow中获取ssh链接远程登录

```shell
SSH: ssh xxx@nyc1.tmate.io
```

3、复制一个配置文件到openwrt目录下

```shell
cp r3g.config openwrt/.config
```

4、定制配置

```shell
make meunconfig
```

5、退出，Action继续执行

```shell
exit
```

