---
title: "AI Era My Simple Research Workflow"
---


You find a huge list of markdown file from some AWESOME REPO.

There are tens of links in the markdown file. You've timeboxed a research topic.

You have two options:

- Slow down the time, so that you can easily read all the links
- Delegate it to NotebookLM.


But there is one problem:

- You need to extract URL lists first, might want to exclude some (like github repos)
- Or you might be only interested in youtube videos. It is OK.


Here a CyberCHEF (which I've learnt from [my wife](https://www.linkedin.com/in/semanurg/)) recipe to sort out the problem.


```
Extract_URLs(false,false,false)
Filter('Line feed','github.com',true)
Filter('Line feed','youtube.com',true)
Sort('Line feed',false,'Alphabetical (case sensitive)')
Unique('Line feed',false)
```

The recipe:

1. Extracts the links from Markdown
2. Excludes github and youtube links
3. Sorts the links
4. Removes duplicates

