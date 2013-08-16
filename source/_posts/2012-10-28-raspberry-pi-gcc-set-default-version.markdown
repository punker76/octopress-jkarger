---
layout: post
title: "raspberry pi gcc-set-default-version"
date: 2012-10-28 20:08
comments: true
categories: [raspberry pi, linux, debian]
keywords: raspberry pi,linux,debian,wheezy,gcc,version
description: how to set the gcc version on debian wheezy raspbian
---

Hi,

here is my first tip for raspberry pi with installed debian wheezy raspbian.
i needed an older gcc version than was preinstalled on wheezy.
installation wasn't the problem. the problem was to set the right gcc version.
after searching the web i found this helper script created by [Jeff Carr-3](http://debian.2.n7.nabble.com/template/NamlServlet.jtp?macro=user_nodes&user=100722).

{% codeblock lang:bash %}
#!/bin/bash 

usage() { 
        echo 
        echo Sets the default version of gcc, g++, etc 
        echo Usage: 
        echo 
        echo "    gcc-set-default-version <VERSION>" 
        echo 
        exit 
} 

cd /usr/bin 

if [ -z $1 ] ; then 
        usage; 
fi 

set_default() { 
        if [ -e "$1-$2" ] ; then 
                echo $1-$2 is now the default 
                ln -sf $1-$2 $1 
        else 
                echo $1-$2 is not installed 
        fi 
} 

for i in gcc cpp g++ gcov gccbug ; do 
        set_default $i $1 
done
{% endcodeblock %}

usage

{% codeblock lang:bash %}
sudo sh gcc-set-default-version 4.7
{% endcodeblock %}