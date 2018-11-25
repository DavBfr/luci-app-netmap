include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-netmap
PKG_VERSION=1.1
PKG_RELEASE:=0

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-netmap
	SUBMENU:=Network Map
	SECTION:=luci
	CATEGORY:=LuCI
	URL:=https://github.com/DavBfr/luci-app-netmap
	MAINTAINER:=David PHAM-VAN <dev.nfet.net@gmail.com>
	SUBMENU:=3. Applications
	TITLE:=Network Map
	PKGARCH:=all
	PKG_LICENSE:=APACHE_2
	PKG_LICENSE_FILES:=LICENSE
endef

define Package/luci-app-netmap/conffiles
endef

define Package/luci-app-netmap/description
	This package contains LuCI configuration pages to display a map of the network.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-netmap/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/map
	$(INSTALL_DIR) $(1)/usr/bin

	$(INSTALL_BIN) ./src/index.htm $(1)/usr/lib/lua/luci/view/map/
	$(INSTALL_BIN) ./src/map.lua $(1)/usr/lib/lua/luci/controller/
endef

define Package/luci-app-netmap/postinst
endef

$(eval $(call BuildPackage,luci-app-netmap))
