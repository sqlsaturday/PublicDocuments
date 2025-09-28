---
layout: post
title: "Fixing a Date Bug on the Home Page"
author: Steve Jones
---
I received a last minute request from an organizer to update their site. I tend to get a lot of organizers asking for updates, as opposed to building their own pull request, which is fine. It takes me a few minutes (usually) and I'm happy to help.

In this case, the request came late at night before an event. I didn't see it until early in the morning (when the hotel woke me for an emergency announcement). I updated the site, kicked off a rebuild, and then went back to sleep when CI completed.

I got up to find that the three events on that day (Boston, Minnesota, CXS) had disappeared from the front page. I was a little confused, but I quickly realized that we calculate if the event is after today (based on build time), we show it. If not, it's a Past Event.

At 5:00am, the events are listed for the date and are no longer in the future. In other words, the events were listed as Sept 27, at midnight (2025-09-27 00:00:00). At build time, 2025-09-27 05:00, they are past events.

I quickly opened an issue ([#1187](https://github.com/sqlsaturday/sqlsatwebsite/issues/1187)), since I've learned to try and use good software engineering practices. I opened a branch, since I don't trust myself and need CI to verify things, and I googled a bit to try and figure out how to change the date calculation.

At first, I thought I needed to add a day to the date calc. I did for the event, but as some might do, I initially added a day to the current date. I also had a few typo bugs, so thanks CI. As I was getting reach for my first session, I realized I needed to subtract a day from the current date and then use that for the front page.

The attendees in my first session got to see me check the CI build and then merge the change to get the site looking correct for the day.

It was a little stressful to try and get this done in a hurry while prepping for my session, and my apologies to anyone who struggled to find the event or a schedule.

## Reminders

I also want to remind people that [SQL Saturday is an independent US 501.c.3 corporation](https://blog.sqlsaturday.com/2021-11-18-nonprofit/) organized as a public charity. We are not owned by, or managed by Redgate Software. Redgate donated the brand to the corporation and gave us a grant to run events, but there is no oversight of the corporation. Redgate does maintain a permanent seat on the board of directors, currently occupied by Steve Jones, but has no more influence than any of the other members of the board.

If you or others want to join our mailing list, you can register here: [http://eepurl.com/hwVBKn](http://eepurl.com/hwVBKn). Please feel free to pass this along to others.