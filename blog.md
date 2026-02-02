---
layout: default
title: Blog
---

<div class="blog-container">
	<h1 style="text-align:center;">Publications</h1>
	{% for post in site.posts %}
		<h2> <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> </h2>
		<p><b>{{ post.date | date: "%d %B %Y" }}</b> - <i>{{ post.excerpt | truncate: 150 }}</i></p>
		<hr style="width:33%" />
	{% endfor %}
</div>

