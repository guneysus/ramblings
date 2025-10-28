---
title: "[CyberChef] Recipe for pre-processing LLM outputs"
date: 2025-10-28 16:52:05 Z
tags:
    - cyberchef
description: ''
layout: post
---

Had to pre-process markdown output from ChatGPT.

The requirement is simple:

1. Converting each numbered list item into h4
2. Removing the indent for each item, so that they are not rendered as code-blocks.


```chef
Find_/_Replace({'option':'Regex','string':'^(\\d+)'},'#### $1',true,false,true,false)
Find_/_Replace({'option':'Regex','string':'^([ ]+\\-)'},'-',true,false,true,false)
```



