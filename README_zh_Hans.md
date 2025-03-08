<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Galène

[![集成程度](https://apps.yunohost.org/badge/integration/galene)](https://ci-apps.yunohost.org/ci/apps/galene/)
![工作状态](https://apps.yunohost.org/badge/state/galene)
![维护状态](https://apps.yunohost.org/badge/maintained/galene)

[![使用 YunoHost 安装 Galène](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=galene)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Galène。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Galène is a videoconference server (an “SFU”) that is easy to deploy and that requires moderate server resources. It was originally designed for lectures and conferences (where a single speaker streams audio and video to hundreds or thousands of users), but later evolved to be useful for student practicals (where users are divided into many small groups), and meetings (where a dozen users interact with each other).

### Client features:

- multiparty audio and video
- text chat
- reasonably good support for mobile (Android and iPhone/iPad)
- screen and window sharing, including sharing multiple windows simultaneously (not on mobile)
- streaming video and audio from disk
- activity detection
- LDAP support
- invite user
- Command-line client for Galene file transfer


**分发版本：** 0.96.3~ynh1

**演示：** <https://galene.org:8443/>

## 截图

![Galène 的截图](./doc/screenshots/screenshot.png)

## 文档与资源

- 官方应用网站： <https://galene.org/>
- 官方用户文档： <https://galene.org/faq.html>
- 官方管理文档： <https://galene.org/>
- 上游应用代码库： <https://github.com/jech/galene>
- YunoHost 商店： <https://apps.yunohost.org/app/galene>
- 报告 bug： <https://github.com/YunoHost-Apps/galene_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/galene_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
或
sudo yunohost app upgrade galene -u https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
