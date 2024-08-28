---
layout: post
title: "A Design Change for the Table of Contents"
author: Steve Jones
---
For a long time I've had a menu at the top of each SQL Saturday event. This has looked like this:

![Event table of contents](/assets/img/blog/2024-08_0124.png)

This has worked well, with a "return" below each section. That was a design decision that made sense to me. Each section had this below it, which you can see a few examples of this below:

![return to top navigation](/assets/img/blog/2024-08_0122.png)

As I constantly update events and check things on pages, I wondered why do I need to go to the top of the page? If I'm checking sponsors, why not be able to link to the CFS quickly? Or the contacts?

I made a change. [Pull request 632](https://github.com/sqlsaturday/sqlsatwebsite/pull/632) does this, by repeating the TOC code in multiple places. Ideally I'd have this as an include of some sort, but I don't want to refactor this code right now. Plus, I haven't changed the TOC in over a year, so why not just copy it.

This is the new look.

![navigation everywhere](/assets/img/blog/2024-08_0123.png)

Comments welcome.

## Reminders

I also want to remind people that [SQL Saturday is an independent US 501.c.3 corporation](https://blog.sqlsaturday.com/2021-11-18-nonprofit/) organized as a public charity. We are not owned by, or managed by Redgate Software. Redgate donated the brand to the corporation and gave us a grant to run events, but there is no oversight of the corporation. Redgate does maintain a permanent seat on the board of directors, currently occupied by Steve Jones, but has no more influence than any of the other members of the board.

If you or others want to join our mailing list, you can register here: [http://eepurl.com/hwVBKn](http://eepurl.com/hwVBKn). Please feel free to pass this along to others.