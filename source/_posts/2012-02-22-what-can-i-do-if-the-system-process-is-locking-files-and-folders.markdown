---
layout: post
title: "what can i do if the system process is locking files and folders?"
date: 2012-02-22 14:14
comments: true
categories: [windows, uac, application]
keywords: windows,uac,application,process,unlocker,experience,service
description: how to prevent locking files and folder
---

the problem shows up when a file can not be deleted or overwritten. the system process (pid = 4) captures it for about a minute, then it is possible to delete or rename a file.  
the problem occurs on my windows 7 64-bit machine, i can’t say whether this occurs under vista or other operating systems.  
if you are ever even been in this situation has caused you gray hairs, then you can use the following tip.

first you can try the freeware tool [unlocker](http://www.filehippo.com/de/download_unlocker "go to download page") to unlock the file.

if this does not work, then try this (possible more information [here](http://social.msdn.microsoft.com/forums/en-us/vcgeneral/thread/fcdde3bc-43a1-4ab6-b0b5-9525fe4e84c8 "fatal error lnk1168: cannot open 'filename.exe' for writing")):

just turn on this service  
    "application experience service"  or "anwendungserfahrung"  

this solved my problem, but my gray hairs stay there!