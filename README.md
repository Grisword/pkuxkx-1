# 北大侠客行 TinTin++ 机器人

本项目是一个适用于知名 MUD 游戏《[北大侠客行](http://www.pkuxkx.com)》的辅助挂机程序。

本程序使用 [TinTin++](https://tintin.sourceforge.io)（以下称 **tt**）作为 MUD 客户端，
采用 [TinTin++ 的脚本语言](https://tintin.sourceforge.io/manual/) 编写完成，文件名后缀为 `.tin`。

## 什么是 MUD

MUD 是最早的网络游戏，是一种基于文字界面的多人角色扮演游戏，历史悠久，内涵丰富。
在古朴的终端界面下，通过阅读文字展开想象，来构筑一个庞大的虚拟世界，因此富有独特的魅力。

## 什么是北大侠客行

北大侠客行（以下称 **北侠**）于 1996 年开服，至今仍在运营，算是国内运行非常长的网络游戏了。
而且这些年一直都有更新，实属难能可贵。

基于 MUD 特有的文化，挂机在北侠也是被允许的，而在 MUD 下开发挂机程序也是一种别有风味的玩法。

## 本程序有什么用

tt 是著名的 MUD 客户端，可以用来登录北侠。本程序基于 tt 开发了一个框架，
在此基础上实现了一些常用的机器功能，以方便用户在北侠上愉快地玩耍。

目前已经实现的功能有：

* 通用
    * [X] 自动化练功：打坐、吐纳
* 武当派
    * 新手任务
        - [X] 炼丹
        - [X] 阵法
        - [ ] 采气
        - [ ] 诵经

## 如何使用本程序

### 运行环境

本程序可在 Linux 及 macOS 上运行。运行时依赖以下程序：

* tintin++ 2.01.x
* screen 4.6.2
* tmux 2.7

其中版本号是作者开发时的版本，其它版本下如果使用有问题欢迎提 issue。

### 运行方法

```
PKUXKX_ID=foo PKUXKX_PASSWD=password sh ./bot.sh
```
注意替换账号和密码。

### 通过 Docker 来运行

本项目支持通过 Docker 来运行，推荐使用 Docker 来挂机。

```
docker run --name pkuxkx --env PKUXKX_ID=foo --env PKUXKX_PASSWD=password --rm -it flwcn/pkuxkx
```
注意替换账号和密码。

## 如何贡献

* 体验
* 通过提交 issue 来反馈意见
* 通过 PR 来贡献代码
