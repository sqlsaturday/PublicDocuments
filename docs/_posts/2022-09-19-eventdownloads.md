---
layout: post
title: "Supporting Event Downloads"
author: Steve Jones
---
One of the things I've noticed lately is that events need to send things to others for downloads. While email works well, and certainly is good for notifications, it's nice to have downloads available.

I've updated the YML file to have two new keys: downloads and eventnumber.

The eventnumber is just the numerical designation for the event. 

The downloads value is a multi value key, which takes an array of names and urls. A sample of the YAML file is shown here for the Denver event.

![YAML field for downloads](/assets/img/blog/yamldownload.png)

The name and url keys can be repeated over and over for each download. The name is shown on the event page, as shown here. This URL is for Denver and is [https://sqlsaturday.com/2022-09-17-sqlsaturday1034/#downloads](https://sqlsaturday.com/2022-09-17-sqlsaturday1034/#downloads).

![Downloads for events](/assets/img/blog/yamldownload2.png)

There is an [Event folder](https://github.com/sqlsaturday/sqlsatwebsite/tree/main/assets/event) in the assets section of the codebase. Each event that needs downloads should add a folder with their event number and place the downloads in that folder.

Since I handle moving code and files for many people, I can do this. However, if you use PRs to update the site, feel free to do this yourself.

Remind others to register here: [http://eepurl.com/hwVBKn](http://eepurl.com/hwVBKn)
