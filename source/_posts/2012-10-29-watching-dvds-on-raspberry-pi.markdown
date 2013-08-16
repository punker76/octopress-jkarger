---
layout: post
title: "watching dvds on raspberry pi"
date: 2012-10-29 20:38
comments: true
categories: [raspberry pi, linux, debian, xbmc]
keywords: raspberry pi,linux,debian,xbmc,openelec,raspbmc,xbian,serial,license,mpg2
description: how to watch dvds on raspberry pi
---

if you want watching dvds on your raspberry pi with installed [OpenELEC](http://openelec.tv), [Raspbmc](http://www.raspbmc.com) or [XBian](http://xbian.org) you must buy a [MPEG-2](http://www.raspberrypi.com) licence.

you need your device's internal 16-digit serial number, not the number printed on your board.

to find your serial number, type
{% codeblock lang:bash %}
cat /proc/cpuinfo
{% endcodeblock %}
at the command line and you get this result
{% codeblock lang:bash %}
Processor       : ARMv6-compatible processor rev 7 (v6l)
BogoMIPS        : 697.95
Features        : swp half thumb fastmult vfp edsp java tls
CPU implementer : 0x41
CPU architecture: 7
CPU variant     : 0x0
CPU part        : 0xb76
CPU revision    : 7

Hardware        : BCM2708
Revision        : 000f
Serial          : 000000000000000d
{% endcodeblock %}
buy your licence with this serial and put the licence keys in the config.txt of your linux distribution.
{% codeblock lang:bash %}
decode_MPG2=-0x00000000
decode_WVC1=-0x00000000
{% endcodeblock %}
now restart your raspi and have fun!

that's it!