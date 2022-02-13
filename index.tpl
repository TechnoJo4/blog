<!DOCTYPE html>
<html>
<head>
	<title>blog - technojo4</title>
	<link rel="stylesheet" href="/blog/style.css" type="text/css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<div>
<%= exectpl(loadtpl("nav.tpl"), env) %>
<article>
<h1>tech blog</h1>
<%= (function()
	local tbl = {}

	table.sort(data, function(a,b)
		if a.year == b.year then
			if a.month == b.month then
				return a.day > b.day
			end
			return a.month > b.month
		end
		return a.year > b.year
	end)

	for i,v in pairs(data) do
		tbl[i] = string.format(
				'<div class="article"><a href="%s">%s</a><span>%d-%02d-%02d</span></div>',
				v.link, v.title, v.year, v.month, v.day
			)
	end

	return table.concat(tbl, "")
end)() %>
</article>
<div class="buffer"></div>
</div>
</body>
</html>
