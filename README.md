配置基于[雾凇拼音](https://dvel.me/posts/rime-ice/)（截至[2024-07-03 Commit 37ca416](https://github.com/iDvel/rime-ice/tree/37ca416a9c755716d049c549b131276ddc440688)版本）

- [雾凇拼音的功能、词库和使用说明（截至2024-07-03版本）](https://github.com/iDvel/rime-ice/blob/37ca416a9c755716d049c549b131276ddc440688/README.md)
- [更新日志（截至2024-07-03版本）](https://github.com/iDvel/rime-ice/blob/37ca416a9c755716d049c549b131276ddc440688/others/CHANGELOG.md)
- [常见问题](https://github.com/iDvel/rime-ice/issues/133)

**注：cn_dicts、en_dicts和opencc词库跟踪[雾凇拼音仓库](https://github.com/iDvel/rime-ice)的更新**（基于Github Action，每月自动检查一次词库是否更新，如果更新则本仓库的词库同步更新）。

## 一、输入方案与实用功能

1、输入方案

- 小鹤双拼+辅码（辅码方案：[ridical-pinyin](https://github.com/mirtlecn/rime-radical-pinyin)）

2、快捷输入/修改

- Tab、Shift+Tab组合可以按字跳转光标；Shift+BackSpace可以删除单个汉字的拼音
- 双拼V键触发输入符号/表情
- 日期（date）、时间（time）、农历（lunar）快捷输入
- 以词定字

3、一些好用的映射或设置

- 中文输入下\`映射为\`而不是·，方便markdown输入。
- 中文输入下不上屏，方便输入
  1. 邮件：email @ 之后不上屏
  2. 网址：网址输入时不上屏，如 `http://` `www.` 等，输入斜杠也不上屏，方便输入完整网址，如github.com/leviyanx
  3. 网址/文件名：句号不上屏，支持 `google.com` `abc.txt` 等网址或文件名
  4. 下划线不上屏（**输入英文**才能触发），如sync_dir

4、已添加词库

1. 【雾凇拼音】维护词库
2. 扩展词库（来自搜狗词库）
   1. 机械专业名词
   2. 电力专业名词
   3. 计算机专业名词
   4. 冶金专业名词
   5. 建筑专业名词
   6. 数学专业名词
   7. 中医专业名词
   8. 人体穴位专业名词
   9. 中国政府机构名称
   10. 中国高校名称
   11. 中国县及县以上地名
   12. 中国区县地名
   13. 中国医院名称

## 二、快速使用

1、在Mac/Win上安装好[Rime输入法](https://rime.im/)，设置好用户文件夹（settings）。

2、删除默认生成的 `default.custom.yaml`与 `weasel.custom.yaml`(如果是squirrel，则是 `squirrel.custom.yaml`)文件。

3、进入用户文件夹，git初始化仓库
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

4、将同步文件夹（sync_dir）内的下列文件复制到本文件夹内
1. custom_phrase_double.txt

5、`重新部署`。

6、修改installation.yaml文件内两项参数
```yaml
# 同步目录名称
installation_id: "leviyanx-$unique_device_identifier"
# 同步目录的父目录
sync_dir: "path/to/your/sync_dir"
```

7、`同步用户数据`。

## 三、自动同步词库

1、Win：

1. 修改好 `./scripts/win`下两个文件中的路径：用户文件夹、程序路径以及bat脚本的路径。
2. vbe脚本配合win的 `任务计划程序`实现自动化（具体操作可见此[视频][【Rime自动化：自动更新配置、词库、部署、同步用户词】]）。

2、Mac：

1. 通过 `crontab -e`设置定时执行脚本（如下，每5小时执行一次）
   ```bash
   0 */5 * * * /bin/bash $HOME/Library/Rime/scripts/mac/updateSettingsAndSync.sh
   ```

- 脚本参考了此[issue][无法通过命令自动同步字典配置]。
- 【注】此脚本会检测输入法是否正在被使用（未被使用时，cpu占用率一般小于0.5）。在被使用时，不执行重新部署与同步用户数据操作。

[【Rime自动化：自动更新配置、词库、部署、同步用户词】]: https://www.bilibili.com/video/BV1Am41167B9/?share_source=copy_web&vd_source=7bb910c4747384efecba3166ead658de
[无法通过命令自动同步字典配置]: https://github.com/rime/squirrel/issues/421
