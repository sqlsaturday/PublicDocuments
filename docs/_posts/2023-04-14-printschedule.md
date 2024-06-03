---
layout: post
title: "Adding a Printable Schedule"
author: Steve Jones
---
There were two issues with scheduling. Size and ease of viewing this. We added two new features: an adjustable height and a print link. This post describes how this works.

## Displaying the Schedule

One of the things that has been interesting with the 4th evolution of the SQL Saturday site is the scheduling. We have typically taken an embed from Sessionize using this code (brackets removed)

```
iframe frameborder="0" STYLE="width: 100%;height: 1900px" 
   SRCDOC="BODY script type='text/javascript' src='{pagedata.scheduleurl}' /script /BODY"
/iframe
```

This code essentially takes am Embed url like this one: https://sessionize.com/api/v2/orwepzv5/view/GridSmart

This produced a schedule you could see, as shown in this image. This is embedded in the page.

![Schedule view on the site](/assets/img/blog/printschedule_a.png)

That mostly worked, but there were a few issues. First, sometimes the embed doesn't look great, especially with wide schedules (lots of rooms). Sometimes this also had a vertical scroll bar if the configuration was large and there were lots of sessions.

## The Fixes

We added two fixes for this. First the default embed code from Sessionize is for 1900px high. That's a lot. Or not a lot. So, we decided to make things configurable.

There is a new key in the YAML file for sessionizeheight. If you set this, then it's inserted into the code below in the style. If you don't, it's 1900.

```
iframe frameborder="0" STYLE="width: 100%;height: {sessionizeheight}px" 
   SRCDOC="BODY script type='text/javascript' src='{pagedata.scheduleurl}' /script /BODY"
/iframe
```

The layout logic looks like this (liquid formatting removed):

```
        if pagedata.scheduleheight
            assign sessionizeheight = pagedata.scheduleheight
        else
             assign sessionizeheight = 1900 
        endif
```

The second thing we did was add another key, called printscheduleurl. You can use a URL, like this one, which is viewable on the web. Look at the previous URL to see it's not viewable. 

Viewable URL: https://sessionize.com/view/r8l3rk1o/GridSmart?format=Embed_Styled_Html&isDark=False&title=Jacksonille%20SQL%20Saturday%202023

We added the layout logic below to display this as a link for users (HTML stuff removed).

```
                if pagedata.printscheduleurl
         
                  p You can also view the href="{pagedata.printscheduleurl}" target="_blank" print schedule /a /p               
                endif
```

These two changes should make scheduleing a little smoother for organizers and attendees.

We appreciate your support of SQL Saturday. If you or others want to join our mailing list, you can register here: [http://eepurl.com/hwVBKn](http://eepurl.com/hwVBKn). Please feel free to pass this along to others.