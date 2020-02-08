#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#移植R1S代码
#git clone https://github.com/jerrykuku/openwrt-nanopi-r1s-h5 temporary
#cp -rf temporary/* .
#rm -rf temporary
#chmod 0755 target/linux/sunxi/base-files/etc/board.d/01_leds
#替换dnsmasq-full
sed -i 's/dnsmasq /dnsmasq-full default-settings luci /' include/target.mk
#更新主题
#rm -rf package/lean/luci-theme-argon
#git clone https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
# 删除默认密码
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings
