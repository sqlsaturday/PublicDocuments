# A SQL Saturday Schedule History Tool

This proposes a tool that helps maintain the SQL Saturday schedules over time in a way that reduces the dependency on Sessionize.


## Description of Current Process

Right now the speaker list and schedule are an embedded call to the Sessionize.com API, providing the schedule and speakers in real time. This is visible in any of the 2022 events, such as the [Jacksonville 2022 event](). 

This data is up to date as organizers change their schedules and adjust speakers.

This depends on sessionize.com being up and responsive at their API location. This also assume they maintain this data in the future.

Older events, such as [Orlando #8](), were reconstructed from the XML files that the PASS organization used to publish. These were parsed and a page built which contains the sessions and speakers, as well as event metadata. We also have PDFs of schedules from many events that are linked from these pages (example []() ).


## Tool Outline

Sessionize does allow an API with JSON or HTML data. Ideally, once an event is complete, the record of the schedule and speakers is set. The request is a CLI (or other automated) tool that can take this API data and produce the following:
- A HTML schedule that looks similar to the Sessionize one now
- A list of speakers and their metadata
- links to external items (twitter, linkedin, session download, etc.)
- BONUS - download the session materials and upload them somewhere on the SQL Saturday site in a folder (/assets/materials/event/nnnn, where nnnn would be the event number).

The technology to do this isn't important. We can have this locally hosted, send a tool to each organizer, or use some cloud location. 

I would assume here the organizer drops a JSON file in some location and this tool processes it.