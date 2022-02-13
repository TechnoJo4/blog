<!DOCTYPE html>
<html>
	<title><% title %></title>
	<link rel="stylesheet" href="/blog/style.css" type="text/css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
</head>
<body>
<div>
<%= exectpl(loadtpl("nav.tpl"), env) %>
<article>
<%= markdown(exectpl(template.parse(article_data), env)) %>
</article>
<div class="buffer"></div>
</div>
</body>
</html>
