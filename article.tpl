<!DOCTYPE html>
<html>
<head>
	<title><% title %> - technojo4</title>
	<link rel="stylesheet" href="style.css" type="text/css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

	<meta name="twitter:card" content="summary">
	<meta name="twitter:site" content="@TechnoJo4">
	<meta name="twitter:creator" content="@TechnoJo4">
	<meta property="og:type" content="article">
	<meta property="og:title" content="<% title %>">
	<meta property="og:url" content="https://www.technojo4.com/blog/<% resname %>" />
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
