--[[
LuCI - Lua Configuration Interface

Copyright 2008 Steven Barth <steven@midlink.org>
Copyright 2008 Jo-Philipp Wich <xm@leipzig.freifunk.net>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

$Id: samba.lua 7362 2011-08-12 13:16:27Z jow $
]]--

module("luci.controller.samba", package.seeall)

function index()
	require("luci.i18n")
	luci.i18n.loadc("samba")
	if not nixio.fs.access("/etc/config/samba") then
		return
	end

	local page

	page = entry({"admin", "diskapply", "samba"}, cbi("samba"), _("Network Shares"))
	page.i18n = "samba"
	page.dependent = true
end
