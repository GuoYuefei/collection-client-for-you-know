# ssr
ssr 客户端，win + mac + android+linux

*作者收藏，纯粹二进制文件，请勿用于违法当地法律法规的活动。*



关于linux的客户端，我选择的是v2ray的客户端。有web界面方便操作。需要安装v2ray-core。

### v2ray-core

https://github.com/v2ray/v2ray-core

其中v2ray可以在GitHub中自己在releases中下载最新版本。更新这个文档时使用的是v4.27.0。

```
// v2ray-core/

+ doc
	- readme.md
+ systemd
	- v2ray.service			// systemd 服务文件
+ systemv
	- v2ray					// 一个执行的shell， 这边我没使用
- config.json				// 配置文件
- geoip.dat
- geosite.dat
- v2ctl						// 二进制可执行 v2ray最后会调用这个文件
- v2ctl.sig
- v2ray						// 二进制可执行文件
- v2ray.sig
- vpoint_socks_vmess.json
- vpoint_vmess_freedom.json
```

v2ray.service 文件有一条语句得看懂

<code>ExecStart=/usr/bin/v2ray/v2ray -config /etc/v2ray/config.json</code>

根据这条，我们将解压出来的文件全部放入<code>/usr/bin/v2ray/</code>文件夹下。

然后将其中的config.json放入<code>/etc/v2ray/config.json</code>.

把可执行文件和配置文件放到该放置的位置后就应该放置服务文件。

将 v2ray.service 文件放入 <code>/etc/systemd/system/v2ray.service</code>, 并创建软连接，执行以下语句

<code>ln -s /etc/systemd/system/v2ray.service /etc/systemd/system/multi-user.target.wants/v2ray.service</code>

关于v2ray-core的配置完成。



### v2raya -------------- 一个v2ray的web-gui客户端

https://github.com/mzz2017/v2rayA

下载其v1.0.0版本（截止更新该文档时的最新版）。选择.deb或者适合你的linux系统的安装文件。 也可以根据官方文档自编译。 （编译环境 golang）

安装后，你就可以使用 systemd 启动它了。

```
v2rayA is listening at http://127.0.0.1:2017
v2rayA is listening at http://192.168.1.178:2017
v2rayA is listening at http://192.168.1.167:2017
v2rayA is listening at http://[::1:2017]
```

**!!! 一定要安装core之后，不然v2raya无用**

本仓库下会给出shell脚本参照及以上所有工具的快照。