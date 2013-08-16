---
layout: post
title: "first netduino project"
date: 2012-12-05 17:13
comments: true
categories: [netduino]
keywords: arduino,netduino,project
description: my first netduino project
---

3 weeks ago my netduino plus 2 has arrived. now it was time to try it.  
my first netduino project, taken from the getting started guide. simple, short, but it works!  
and the best: i can debug the code, while it's running on the netduino! very cool!  

[netduino.com](http://netduino.com/)

{% codeblock lang:csharp %}
using System.Threading;
using Microsoft.SPOT.Hardware;
using SecretLabs.NETMF.Hardware.Netduino;

namespace blink_project
{
  public class Program
  {
    public static void Main() {
      // write your code here
      var led = new OutputPort(Pins.ONBOARD_LED, false);

      while (true) {
        led.Write(true); // turn on the led
        Thread.Sleep(250); // sleep for 250 ms
        led.Write(false); // turn off the led
        Thread.Sleep(250); // sleep for 250 ms
      }
    }
  }
}
{% endcodeblock %}
