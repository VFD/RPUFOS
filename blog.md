---
layout: default
title: Blog
---

<div class="posts">
  <!-- Boucle sur les 10 posts de la page courante -->
  {% for post in paginator.posts %}
    <article class="post">
      <h2><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h2>
      <div class="date">
        {{ post.date | date: "%d/%m/%Y" }}
      </div>
      <div class="entry">
        {{ post.excerpt }}
      </div>
      <a href="{{ site.baseurl }}{{ post.url }}" class="read-more">Lire la suite</a>
    </article>
  {% endfor %}
</div>

<!-- Navigation entre les pages -->
<div class="pagination">
  {% if paginator.previous_page %}
    <a href="{{ site.baseurl }}{{ paginator.previous_page_path }}" class="previous">&laquo; Oldest</a>
  {% else %}
    <span class="previous">&laquo; Oldest</span>
  {% endif %}
  
  <span class="page_number">Page {{ paginator.page }} sur {{ paginator.total_pages }}</span>
  
  {% if paginator.next_page %}
    <a href="{{ site.baseurl }}{{ paginator.next_page_path }}" class="next">Newest &raquo;</a>
  {% else %}
    <span class="next">Newest &raquo;</span>
  {% endif %}
</div>
