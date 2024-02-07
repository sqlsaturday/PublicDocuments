---
layout: post
title: "Building Better Habits"
author: Steve Jones
---
Some of you probably know that the [SQL Saturday website](https://sqlsaturday.com/) and the [corporate SQL Saturday website](https://blog.sqlsaturday.com/) run from GitHub. We have repos for [the main site](https://github.com/sqlsaturday/sqlsatwebsite) and [the corporate one](https://github.com/sqlsaturday/PublicDocuments), and all of the code that produces these sites is stored there. We have a CI/CD process that takes changes from merges to the main repository, builds them, and then deploys a site to GitHub Pages. This is a great way to run a website, and it's free.

## Using Branches
Many of our organizers are technical people and will submit pull requests to make changes to their events. A few trusted organizers actually have the ability to approve their own pull requests, but most everyone needs to fork the repository into their GitHub account to make changes.

Except me (and the board). We can make changes to the repository directly, and given the nature of the site, we don't usually use pull requests. Actually, we is mostly me, and I've often not bothered.

However.

I want to be a better model for others, and I want to ensure I'm acutally practicing the things I used to do when I was a developer. So, I'm doing a couple things to showcase better development

### Issues
I'm starting to open issues for new changes. It's a good way to track work and see which things relate to which code. You can see [all our issues](https://github.com/sqlsaturday/sqlsatwebsite/issues) for the main site repo, where I'm setting up new events and closing these down as the events complete.

Note: I'm only doing this for the main site. For the corporate site, I'm still making without issues because those are mostly blog posts.

### Brances and Pull Requests
I'm starting to create new branches for different work, mainly because I occassionally have messed up main, and also because I don't always ensure I've commit/pull/pushed things from different machines. Branches help here.

I primarily work in VS Code, and it's easy to add new branches. As you can see below, I have quite a few that I'm working on for different tasks. 

![SQL Sat Branches](/assets/img/blog/vscodebranch.png)

I have the [GitHub Pull Request extension](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github) as well, which lets me create a PR from within VS Code. I can also see the status of the PR.

I still approve my own PRs, but the nice thing is a build runs on my PR ([sample](https://github.com/sqlsaturday/sqlsatwebsite/actions/runs/7803865488) here), so I'm not doing this in main. That's a good idea, and I'm trying to get better about this.

I've also added a protection for main to prevent anyone (really me) from pushing directly to main. I have to use a PR.

## Reminders

I also want to remind people that [SQL Saturday is an independent US 501.c.3 corporation](https://blog.sqlsaturday.com/2021-11-18-nonprofit/) organized as a public charity. We are not owned by, or managed by Redgate Software. Redgate donated the brand to the corporation and gave us a grant to run events, but there is no oversight of the corporation. Redgate does maintain a permanent seat on the board of directors, currently occupied by Steve Jones, but has no more influence than any of the other members of the board.

If you or others want to join our mailing list, you can register here: [http://eepurl.com/hwVBKn](http://eepurl.com/hwVBKn). Please feel free to pass this along to others.