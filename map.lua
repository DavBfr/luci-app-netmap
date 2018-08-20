-- Copyright 2018 David PHAM-VAN <dev.nfet.net@gmail.com>
-- Licensed to the public under the Apache License 2.0.

module("luci.controller.map", package.seeall)

function index()
	local page

	page = entry({"admin", "status", "map"}, template("map/index"), _("Network Map"), 2)
	page.dependent = true

	entry({"admin", "status", "map", "status"}, call("act_status")).leaf = true
end

function act_status()

end
