local template = {}

function template.escape(data)
	return tostring(data or ''):gsub("[\">/<'&]", {
		["&"] = "&amp;",
		["<"] = "&lt;",
		[">"] = "&gt;",
		['"'] = "&quot;",
		["'"] = "&#39;",
		["/"] = "&#47;"
	})
end

function template.exec(data, env, callback)
	local function exec(data)
		if type(data) == "function" then
			setfenv(data, env)
			data(exec)
		else
			callback(tostring(data or ''))
		end
	end
	exec(data)
end

function template.parse(t)
	local _t = "local __w = ...\n"
			.. "local function __e(...) __w(template.escape(...)) end\n"
    		.. "__w[=["
			.. t:gsub("[][]=[][]", ']=]__w"%1"__w[=[')
				:gsub("<%%=", "]=]__w(")
				:gsub("<%%", "]=]__e(")
				:gsub("%%>", ")__w[=[")
				:gsub("<%?", "]=] ")
				:gsub("%?>", " __w[=[")
			.. "]=]"
	return _t
end

return template
