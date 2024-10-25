#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

# Modify hostname
sed -i 's/OpenWrt/XMingWrt/g' package/base-files/files/bin/config_generate

# Modify banner
sed -i '1,/$/d' package/base-files/files/etc/banner
echo -e '                       |\\__/|   (`\\\n                     _.|o o  |_   ) )\n       -------------(((---(((-------------------\n              XMingWrt 24.10.2024 by XMing\n       -----------------------------------------' > package/base-files/files/etc/banner

# Modify SSID
sed -i 's/OpenWrt/GL-AXT1800/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile