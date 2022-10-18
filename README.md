# 构建小米路由器3G的OpenWRT固件

- OpenWRT-full
  - 主路由固件
  - 仅包含ACC加速，多拨，WOL。
  - 配置文件：r3g.config
  
- OpenWRT-ap
  - ap接入点固件
  - 包含广告过滤，kms等
  - 配置文件：r3g-ap.config
  
  ## 工作流
  
  openwrt-ci-star.yml
  
  - 作用：用于获取配置文件
  - 点击“☆ star”按钮出发工作流
  - 默认配置文件：r3g.config

## 定制配置文件

1、Starred运行一个workflow

2、在workflow中获取ssh链接远程登录

```shell
SSH: ssh xxx@nyc1.tmate.io
```

3、定制配置

```shell
cd openwrt
make meunconfig
```

4、退出，Action继续执行

```shell
exit
```

5、获取配置文件

工作流结束后配置文件会上传到Artifacts。