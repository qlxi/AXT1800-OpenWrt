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

# Modify banner
sed -i '1,/$/d' package/base-files/files/etc/banner
echo -e '                       |\\__/|   (`\\\n                     _.|o o  |_   ) )\n       -------------(((---(((-------------------\n              XMingWrt 24.10.2024 by XMing\n       -----------------------------------------' > package/base-files/files/etc/banner

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile