---
layout: default
title: Blog
---

<div class="blog-container">
  <h1>Articles de Blog</h1>
  
  <ul>
    {% for post in site.posts %}
      <li style="margin-bottom: 1em;">
        <b>{{ post.date | date: "%d %B %Y" }} — <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></b>
        <br />
        <i>{{ post.excerpt | truncate: 150 }}</i>
      </li>
    {% endfor %}
  </ul>
</div>
