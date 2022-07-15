---
layout: post
title: "Updating Tags"
author: Steve Jones
---
The history of SQL Saturday events is contained on our [past events page](https://sqlsaturday.com/past/), where I've recovered the history as best I can. Some data was lost in an earlier code upgrade, and others lost when the PASS organization folded.

While the schedules and some information is available, some gross stats and metadata has never been captured very well. As this current site is static, using Jekyll, we can't query a database, but we do have tags. There is a [tags page](https://sqlsaturday.com/tags/) built as part of the rendering process. 

Across the last few weeks, I've been slowly updating some tags for older events. It's slow, boring, and tedious, but I find myself doing a few events as I am on a call or have some other task that doesn't require all my attention. Currently, the page looks like this:

![tags page](/assets/img/blog/tags.png)

As I update things, I've been interested to watch how things grow on this page. The number of events by year, by place, etc. It's exciting to think about Andy and I discussing the idea for SQL Saturday in the spring of 2007 and seeing where it's grown.

Right now I've been adding these tags to events:
- city
- state (US or Australia, sometimes region in other countries)
- country
- continent (inconsistently)
- year
- type of event

These are in the various post documents. For example, the very first event, [Orlando 2007](https://github.com/sqlsaturday/sqlsatwebsite/blob/main/_posts/2007-11-10-SQLSat-0001.markdown) has this tag structure:

  tags: ["Orlando", "Florida", "USA", "physical", "2007", "North America"]

I am open to other types of tags, especially these are data elements that might be added in a database as lookup values. If you want to help, or want other tags, feel free to submit a PR for an event(s). If you have time and find I've missed some tags, same thing. Submit a PR or send me a note.

Steve Jones

Remind others to register here: [http://eepurl.com/hwVBKn](http://eepurl.com/hwVBKn)
