### install

1.  arch

   直接

   ```shell
   sudo pacman -S v2ray
   sudo pacman -S v2raya
   ```

   这时候就可以在相应的桌面环境的菜单中找到v2raya 。

2. deb

如果你的系统是支持deb安装包的可以直接执行本目录下的install.sh脚本。记住需要本目录下的所有文件和文件夹参与。

在此之前请确保存在unzip命令

如果不支持deb可以找到脚本中的相应代码块更改这部分代码。

本 install.sh 需要依赖 v2ray-core，v2raya 两个文件夹。



执行后如果没有错误信息，就可以使用服务。

```shell
## 操作 v2ray-core 服务
systemctl start v2ray		## 开启
systemctl stop v2ray   
systemctl enable v2ray      ## 开机自启动
systemctl disable v2ray
systemctl restart v2ray     ## 重启服务

## 操作 v2raya 服务
systemctl start v2raya
systemctl stop v2raya
systemctl enable v2raya
systemctl disable v2raya
```

-----

在开启两个服务器后用游览器访问 :2017 