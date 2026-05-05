# WoW addon that filters "Queue Announcer" messages on ChromieCraft.

This is a tiny, simple addon. There's nothing to configure. When enabled it will filter any and all "Queue Announcer" messages and prevent them from showing up in your chat window.

The motivation to create this addon is the fact that the in-game command to disable those announcements is not remembered by the game, making the announcements show up once again after a client restart.

If you'd prefer using the in-game commands instead, here they are:
* `.set ann bg off`
* `.set ann arena off`

## Installation instructions

Installation is the same as for almost any other addon:
* Navigate to the directory where you have installed ChromieCraft.
* Go into `\Interface\AddOns\`.
* Create a new directory named `ChatFilterQueueAnnouncer` (make sure it is named *exactly* that, including capitalization).
* Put the two addon files from this repository (`ChatFilterQueueAnnouncer.toc` & `ChatFilterQueueAnnouncer.lua`) inside the directory you just created.
* Now (re)start the game. The addon should be enabled by default.

Should you want to check if the addon has been installed correctly, log into the game and check the following line gets displayed in your default chat window: `ChatFilterQueueAnnouncer (version YYYYMMDD) loaded: Filters "Queue Announcer" messages.`
