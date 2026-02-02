---
layout: default
title: Blog
---

<div class="blog-container">
  <h1 style="text-align:center;">Articles de Blog</h1>
  
  <ul>
    {% for post in site.posts %}
      <li style="margin-bottom: 1em;">
        <b>{{ post.date | date: "%d %B %Y" }} — <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></b>
        <br />
        <i>{{ post.excerpt | truncate: 150 }}</i>
      </li>
    {% endfor %}
  </ul>


{% for post in site.posts %}

<h2> <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> </h2>
<p>{{ post.date | date: "%d %B %Y" }}</p>
<p><i>{{ post.excerpt | truncate: 150 }}</i></p>

<hr style="width:33%" />

{% endfor %}


</div>



