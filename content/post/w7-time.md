+++
categories = ["know-how","english","windows"]
date = "2016-08-27T20:09:56+02:00"
description = "Setting time in Windows 7 in the most crazy way."
keywords = []
title = "Windows 7 and time"

+++

Some time ago I encountered an unordinary problem: I had to set a specific time in Windows 7 in order to run [certain app](http://www.oxid.it/cain.html). Unfortunately, Windows weren't happy enough to allow me to do so, constantly changing time.
<!--more-->

How I fixed it?

{{< highlight batch >}}
@echo off
:loop
date 12-07-27
time 14:24:00
goto loop
{{<  /highlight >}}

Don't do it.

And what was the reason? Windows 7 in this particular situation didn't allow me to change time - it was still changing, no matter what I had done - so, such a dirty trick was a way to do what I want to do. 
