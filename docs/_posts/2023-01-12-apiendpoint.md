---
layout: post
title: "Creating a JSON API Endpoint in Sessionize"
author: Steve Jones
---
Many of the SQL Saturday events use [Sessionize]() for their scheduling of sessions and speakers. This has worked great, and we'd like to capture this data for historical purposes. One easy way to do that is with JSON, and this post walks through opening up a JSON endpoint.

## The Event Dashboard

In the event Dashboard, organizers can see a long menu along the right side. One of the menu items is the API/Embed one.

![Sessionize menu](/assets/img/blog/jsonapi_a.png)

If you select this item, you will get a list of your endpoints. On the right side of the screen, there is a "Create endpoint" button. Select this.

![Sessionize menu](/assets/img/blog/jsonapi_b.png)

This brings up a form, as shown below. The only things you really need to do is to select the JSON endpoint in the format. When you do this, the right side changes and you should select the UTC option for schedules. Give this endpoint a name, like JSON, and then click "Save".

![Sessionize menu](/assets/img/blog/jsonapi_c.png)

Once saved, on the right side is a "Get Code" button. Select that.

![Sessionize menu](/assets/img/blog/jsonapi_d.png)

The code comes in many formats, but for our purposes, select the All Data one. Copy this.

![Sessionize menu](/assets/img/blog/jsonapi_e.png)

Once you have this code, paste it into a browser and you should see a bunch of JSON. Right click and select "Save As". You should name this file with SQLSatxxxx.json, where xxxx is the event number.

![Sessionize menu](/assets/img/blog/jsonapi_f.png)

Once you've saved the file, we have a historical archive in our [sqlsattools repo](https://github.com/sqlsaturday/sqlsattools). You can either email this to the webmaster, or submit a PR to add this to our [raw json folder](https://github.com/sqlsaturday/sqlsattools).