local fs = require("coro-fs")
local markdown = require("markdown")
local template = require("template")

local DIRECTORY = "articles"

local loadtpl, exectpl do
	local base_env = setmetatable({
		markdown = markdown,
		template = template,
		fs = fs
	}, { __index=_G })

	loadtpl = function(path)
		return loadstring(template.parse(fs.readFile(path)))
	end

	exectpl = function(func, data)
		local result = {}

		if type(func) == "string" then
			func = loadstring(func)
		end

		data = setmetatable(data, { __index = base_env })
		data.env = data
		template.exec(
			func, data,
			function(str)
				result[#result+1] = str
			end
		)

		return table.concat(result, "")
	end

	base_env.loadtpl = loadtpl
	base_env.exectpl = exectpl
end

coroutine.wrap(function()
	local tpl = loadtpl("article.tpl")

	fs.mkdir("dist")

	local index = {}

	for file in fs.scandir(DIRECTORY) do
		local path = DIRECTORY .. "/" .. file.name
		local data = fs.readFile(path)
		local title = data:match("^# (.-)\n")

		local result = exectpl(tpl, {
			title = title,
			article_data = data
		})

		local resname
		local year, month, day, linktitle = file.name:match("^(%d+)_(%d+)_(%d+)_(.*)%.")
		if year and month and day then
			resname = linktitle..".html"
			index[#index+1] = {
				year = tonumber(year),
				month = tonumber(month),
				day = tonumber(day),
				title = title,
				link = resname
			}
		else
			resname = file.name:match("^(.*)%.")..".html"
		end

		fs.writeFile("dist/"..resname, result)
	end

	fs.writeFile("dist/index.html", exectpl(loadtpl("index.tpl"), { data = index }))
end)()
