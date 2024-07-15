
配置基于[雾凇拼音](https://dvel.me/posts/rime-ice/)（截至[2024-07-03 Commit 37ca416](https://github.com/iDvel/rime-ice/tree/37ca416a9c755716d049c549b131276ddc440688)版本）

- [雾凇拼音的功能、词库和使用说明（截至2024-07-03版本）](https://github.com/iDvel/rime-ice/blob/37ca416a9c755716d049c549b131276ddc440688/README.md)
- [更新日志（截至2024-07-03版本）](https://github.com/iDvel/rime-ice/blob/37ca416a9c755716d049c549b131276ddc440688/others/CHANGELOG.md)
- [常见问题](https://github.com/iDvel/rime-ice/issues/133)

**注：cn_dicts、en_dicts和opencc词库跟踪[雾凇拼音仓库](https://github.com/iDvel/rime-ice)的更新**（基于Github Action，每月自动检查一次词库是否更新，如果更新则本仓库的词库同步更新）。

## 一、开启的输入方案与功能

输入方案

- 小鹤双拼+辅码（辅码方案：[ridical-pinyin](https://github.com/mirtlecn/rime-radical-pinyin)）

快捷输入/修改

- Tab、Shift+Tab组合可以按字跳转光标；Shift+BackSpace可以删除单个汉字的拼音
- 双拼V键触发输入符号/表情
- 日期（date）、时间（time）、农历（lunar）快捷输入
- 以词定字

一些好用的映射或设置

- 中文输入下\`映射为\`而不是·，方便markdown输入。
- 中文输入下不上屏，方便输入
   1. 邮件：email @ 之后不上屏
   2. 网址：网址输入时不上屏，如`http://` `www.` 等
   3. 网址/文件名：句号不上屏，支持 `google.com` `abc.txt` 等网址或文件名
   4. 下划线不上屏（**输入英文**才能触发），如sync_dir 

## 二、下载与使用配置的方法

1. 在Mac/Win上安装好[Rime输入法](https://rime.im/)，设置好用户文件夹（settings）。
2. 进入用户文件夹，git初始化仓库
   ```shell
   git init
   ```
   git remote链接本仓库
   ```shell
   git remote add origin git@github.com:leviyanx/rime-config.git
   ```
   拉取仓库配置
   ```shell
   git pull origin main
   ```  
3. 将同步文件夹（sync_dir）内的下列文件复制到本文件夹内
   1. custom_phrase_double.txt
4. `重新部署`。
5. 修改installation.yaml文件，设置两项参数
   ```yaml
   installation_id: "leviyanx-$unique_device_identifier"
   sync_dir: "path/to/your/sync_dir"
   ```
6. `同步用户数据`。

## 三、自动同步词库

Win：

1. 修改好`./scripts/win`下两个文件中的路径：用户文件夹、程序路径以及bat脚本的路径。
2. vbe脚本配合win的`任务计划程序`实现自动化（具体操作可见[参考](#参考)中视频的第一条）。

## 参考

视频：

1. [【Rime自动化：自动更新配置、词库、部署、同步用户词】]( https://www.bilibili.com/video/BV1Am41167B9/?share_source=copy_web&vd_source=7bb910c4747384efecba3166ead658de)
