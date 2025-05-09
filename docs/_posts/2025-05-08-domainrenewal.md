---
layout: post
title: "DNS and a Domain Renewal"
author: Steve Jones
---
As I was sitting on a plane Wednesday afternoon, I got a text that the [SQL Saturday](https://sqlsaturday.com/) site was down. I checked from my mobile and sure enough I got a ERROR_PROBE_NXRECORD error.

Strange as nothing has changed in quite some time.

When I landed, I fired up my laptop and was able to connect. I actually made a change in [the repo](https://github.com/sqlsaturday/sqlsatwebsite) for a site and rebuilt it. Checking the link and settings in GitHub it seemed to be working. I didn't think anything of it, but on Thursday morning I got a few other emails from friends that the site was down.

I realized there was an issue and started checking things. I realized after a few MFA missteps and some hunting through various accounts that the domain renewal had failed with an older credit card. The account is set to my personal credit card, and hasn't been changed over to the SQL Saturday corporate one. The domain also migrated from Google Domains (now out of business) to Square Space and used an email that I don't use for the foundation.

Fortunately in this age of mobile access, I was able to log into various accounts and add a new credit card to pay for the renewal while standing in front of the Newport New Jersey PATH station.

Things should be back up, but if you notice any issues, please feel free to contact me.


## Reminders

I also want to remind people that [SQL Saturday is an independent US 501.c.3 corporation](https://blog.sqlsaturday.com/2021-11-18-nonprofit/) organized as a public charity. We are not owned by, or managed by Redgate Software. Redgate donated the brand to the corporation and gave us a grant to run events, but there is no oversight of the corporation. Redgate does maintain a permanent seat on the board of directors, currently occupied by Steve Jones, but has no more influence than any of the other members of the board.

If you or others want to join our mailing list, you can register here: [http://eepurl.com/hwVBKn](http://eepurl.com/hwVBKn). Please feel free to pass this along to others.