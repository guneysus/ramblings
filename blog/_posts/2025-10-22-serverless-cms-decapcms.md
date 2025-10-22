---
layout: post
title: "Serverless CMS: DecapCMS"
date: 2025-10-22T12:00:00.000+03:00
---
It took me some to setup DecapCMS with Jekyll pages hosted on Github but eventually I've made it work.

There are things still bugs me but I'm OK with these.

## DecapCMS does not list the posts before it's setup.

I did not inspected how DecapCMS fetches the contents and whether the "Fetch Posts via GraphQL" settings is effective.

Since there is only single post before setup, I'm ok with it. 

## DecapCMS Saves Drafts on Localstorage but still shows "Unsaved Changes"

If I did not inspect the localstorage, I would assume that an accidental web browser close would lost my drafts.

Apparently it works as expected.

## Since I'm pushing the Develop branch via DecapCMS, Publish button text is meaningless

It would be great to customize Publish button text to like "Save".

Or I would rather prefer pushing my ramblings to the master branch, since:

> THIS IS RAMBLINGS CHANNEL \o/

P.S.

DecapCMS has workflow feature which is very handy, creates PR for each draft.

```yaml
publish_mode: editorial_workflow
```



![](/assets/uploads/screenshot-2025-10-22-at-14-19-50-content-manager.png)

- - -

## Image upload feature is cool.

But apparently Cut/Paste feature does not work as expected. I've misplaced the image but could not move it.

But I'm OK.

Let's try.

![DecapCMS in Action](/assets/uploads/screenshot-2025-10-22-at-12-10-13-content-manager.png "DecapCMS in Action")

## Default editor comes with Rich Text, Instead of Markdown

Weird.

## Noticed why the documentation provides the value `editor:preview: false`
