---
layout: post
title: "syntaxhighlighter for wordpress"
date: 2011-11-10 00:09
comments: true
categories: [wordpress, syntaxhighlighter, tools, blog]
keywords: wordpress,syntaxhighlighter,tools,blog,highlighter,plugin
description: highlight your code in wordpress
---

after a long search i found my prefered syntax highlighter plugin for wordpress.

 * [SyntaxHighlighter Evolved](http://www.viper007bond.com/wordpress-plugins/syntaxhighlighter/)
 * [Better WordPress Syntax](http://betterwp.net/wordpress-plugins/bwp-syntax/) (based on GeSHi)
 * [WP-Syntax](http://wordpress.org/extend/plugins/wp-syntax/)
 * [SyntaxHighlighter Plus](http://wordpress.org/extend/plugins/syntaxhighlighter-plus/)
 * [SyntaxHighlighter2](http://mohanjith.com/2009/03/syntaxhighlighter2.html)

my favorite is **SyntaxHighlighter Evolved**, because the plugin allows adding XAML code a post under the code language XML. wordpress does not interprets the <> characters in the sourcecode.

here is a little example, original vs ugly changed code

{% codeblock lang:xml %}
<Page xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
      xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
      xmlns:PresentationOptions="http://schemas.microsoft.com/winfx/2006/xaml/presentation/options">
  <Grid>
    <TextBlock Text="it works" />
  </Grid>
</Page>
{% endcodeblock %}

here is the ugly changed code

{% codeblock lang:xml %}
<page xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
      xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
      xmlns:PresentationOptions="http://schemas.microsoft.com/winfx/2006/xaml/presentation/options">
  <grid>
    <textblock Text="this sucks!" />
  </grid>
</page>
{% endcodeblock %}

that's it