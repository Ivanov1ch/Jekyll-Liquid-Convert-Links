# Jekyll-Liquid-Convert-Links
Converts links in the .md format to HTML links, regardless of where they are in your Jekyll post. This means that if you have a MD like so:
```md
---
layout: post
title:  "Jekyll-Liquid-Convert-Links"
description: "[https://github.com/PlantsVsDan/Jekyll-Liquid-Convert-Links](Jekyll-Liquid-Convert-Links) is a Jekyll-Liquid plugin that converts links in the .md format to HTML links, regardless of where they are in your Jekyll post."
date: 2018-11-10
keywords: "PlantsVsDan, Jekyll-Liquid-Convert-Links"
category: project
---

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Generated [https://lipsum.com/](here).
```

All you need to do to turn those markdown links into HTML links is to include this liquid in your HTML code:
```HTML
{{ post.description | convert_links }}
......
{{ post.content | convert_links }} 
```

And the built site will give you the following:
```HTML
<a href='https://github.com/PlantsVsDan/Jekyll-Liquid-Convert-Links' target='_blank'>Jekyll-Liquid-Convert-Links</a> is a Jekyll-Liquid plugin that converts links in the .md format to HTML links, regardless of where they are in your Jekyll post.
......
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Generated <a href='https://lipsum.com/' target='_blank'>here</a>.
```

# Installation
To install this plugin, download [https://github.com/PlantsVsDan/Jekyll-Liquid-Convert-Links/blob/master/_convert_links.rb](_convert_links.rb), and put it into your `_plugins` folder in your Jekyll site. If you do not have a `_plugins` folder, you can simply create one - no setup is required. Rebuild and serve your site, and enjoy!
