---
layout: post
title: "Fixing the CFS Logic for SQL Saturday"
author: Steve Jones
---

Tl;dr I am a mediocre developer and realized I had some strange logic in the website. I think I corrected it. This post talks about what I did poorly, and how I (think I) corrected the issue.

## Background

The SQL Saturday site runs on a GitHub Pages site at [https://sqlsaturday.com/](https://sqlsaturday.com/). The site's code is stored in our repo at: [https://github.com/sqlsaturday/sqlsatwebsite](https://github.com/sqlsaturday/sqlsatwebsite) and it built with GitHub actions.

The build is based on [Jekyll]() and [Liquid](). The structure was forked from [DataSaturdays](https://github.com/dataplat/DataSaturdays) and some great work from [Rob Sewell](https://twitter.com/sqldbawithbeard) there. Since then, I modified the site in different ways, which give a lot of flexibility to organizers.

## Controlling the Site
Most of the change between events are stored in YAML Files in the [_data/Events folder](https://github.com/sqlsaturday/sqlsatwebsite/tree/main/_data/events) in the repo. As an example, the SQL Saturday Jacksonville 2023 event is controlled with [this file](https://github.com/sqlsaturday/sqlsatwebsite/blob/main/_data/events/SQLSat1041.yml).

If you look at the file, there are a lot of entries in there. A quick text view of the speaker section is shown below:

```
speakertext: The call for speakers is now closed.
speakerlisturl: 
submittedsessionurl: https://sessionize.com/api/v2/rfkt8xee/view/Sessions
callforspeakersurl: https://sessionize.com/sqlsatjax1041
callforspeakers: false
callforspeakersenddate: 31 Mar 2023
```

These values are then applied in a layout view and replace certain structures. For example, in controlling the CFS, we have this code:

```
        {% if pagedata.speakerlisturl %}
          <p>Here is a list of speakers for this event:</p>
           <script type="text/javascript" src="{{pagedata.speakerlisturl}}"></script>
        {% endif %}
```

Here we are logically looking at the speakerlisturl key. It's blank in the YAML above, so this code block wouldn't output anything on the page. If it weren't blank, the value would be added to the script tag and get the data from Sessionize.

## My Mistake

My logic had a problem. It was reusing a value to do a couple of different things. I think I had a three-phase logic section (or maybe four?) in there. I had this layout code. Note that I'm checking for a true/false value to display the CFS. I then display the date.

```
        {% if pagedata.callforspeakers == false %}
          <p>The call for speakers is not open.
          </p>
        {% else %}
            <p align="center">You can submit a session by clicking the link below. The call for speakers ends on {{ pagedata.callforspeakersenddate }}
            </p>
            <p align="center">
            <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="{{pagedata.callforspeakersurl}}" target="_blank" rel="noopener noreferrer">Submit your session</a>
            </p>
            {% if pagedata.submittedsessionurl %}
            <h3>Current Submitted Sessions</h3>
            <p>Below is a list of submitted sessions by all speakers.</p>
            <p align="left"><script type="text/javascript" src="{{pagedata.submittedsessionurl}}"></script></p>
            {% endif %}
        {% endif %}                         
```

The problem is the date is what really matters. The true/false value was added because a few events didn't want a public CFS. That's OK, but I then have the date displayed, but not checked. The date really determines if the CFS is open.

I'm really using the callforspeakers to decide if there is a CFS and if it is open.

## Fixing the Issue
I decided to separate out the logic here and have one thing mean one thing. My decision:

- The callforspeakers determines if there is a CFS or not. 
- the callforspeakersenddate determines if the CFS is open or not

To implement this logic, I changed to code to this:

```
        {% if pagedata.callforspeakers == false %}
          <p>There is no call for speakers.
          </p>
        {% else %}
```

The else part of this will now determine if the CFS is open or not. The key, callforspeakers, not just determines if the event has a CFS.

The else part really does this. I'm showing part of the code, but essentially I'm showing the button for submissions if the CFS close date hasn't passed. I've added comments for psuedocode after the hash marks.

```
         {% if pagedata.callforspeakersurl %}
          {% if pagedata.callforspeakersenddate > now %}
                ## Show buttons
          {% else %}
              <p>The call for speakers is closed.</p>
          {% endif %}
         {% else %}
          <p>The call for speakers is not open.</p>
         {% endif %}
```

With this logic, if there is no CFS URL, the CFS isn't open. Once I get this from the organizer, I add it to the YAML (or they do). 

If there is a CFS, then I check the date. If the date is not past, we show the button, otherwise, we show a closed note. 

There is other logic to display submitted sessions or other info on the site, but that's the basics of the logic.

## Being Flexible

Hopefully this gives organizers some flexibility. Only a couple events have bothered with showing submitted sessions. Most have a CFS, but not all. I'm trying to be flexible here with lots of switches that allow organizers to customize their events.

We appreciate your support of SQL Saturday. If you or others want to join our mailing list, you can register here: [http://eepurl.com/hwVBKn](http://eepurl.com/hwVBKn). Please feel free to pass this along to others.