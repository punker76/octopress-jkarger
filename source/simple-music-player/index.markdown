---
layout: page
title: "simple music player"
date: 2012-10-29 14:33
comments: true
sharing: true
footer: true
---

{% img center /images/simplemp/main002.png %}

was ist das?
------------
simplemp oder auch simple music player ist ein kleiner, einfacher player zum abspielen von musikdateien (mp3, ogg, wav und wma).
wer kann das ding benutzen? jeder, ist natürlich freeware!!!

warum?
------
gute frage, warum etwas machen was es schon gefühlte 1000 mal gibt?
weil es einfach spass macht und man dabei viel dazu lernt. ich habe das projekt angefangen, weil ich spass am programmieren habe und zu der zeit winamp auf meinem rechner nicht mehr lief!
ich habe schon viele eigene projekte angefangen um mich selber weiter zu verbessern. aber dieses hier hab ich mit viel liebe und herzblut zustande gebracht.

ok, es ist nicht perfekt, vieles fehlt oder ist noch fehlerhaft, aber es funktioniert so wie ich es mir zu anfang vorgestellt habe.
die anforderungen die ich mit stellte waren: er soll schnell sein, wenig resourcen verbrauchen und einfach sein.
ich habe es versucht, aber ich weiss, man kann es nicht jedem recht machen.

download (latest version)
-------------------------
- [SimpleMP_Setup_v1.1.7.2_BETA.exe](http://jkarger.de/simplemp/SimpleMP_Setup_v1.1.7.2_BETA.exe) 0,97 MB (1.026.436 Bytes) Installationspaket inkl. fmodex.dll (v4.06.01)
- [SimpleMP_v1.1.7.2_BETA.zip](http://jkarger.de/simplemp/SimpleMP_v1.1.7.2_BETA.zip) 1,03 MB (1.083.693 Bytes) zum entpacken inkl. fmodex.dll (v4.06.01)

was geht denn nun?
------------------
- einlesen von verzeichnissen inklusive unterverzeichnissen
- abspielen von 4 formaten: MP3, Ogg, WAV, WMA (ich glaube das reicht)
- die dateien werden übersichtlich in einer mediabibliothek angezeigt
- das filtern oder suchen ist in der mediabibliothek und deriplayliste möglich
- drag&drop zwischen mediabibliothek und playliste
- drag&drop innerhalb der mlayliste (umsortieren)
- drag&drop von einzelnen dateien auf das hauptfenster (diese werden in die playliste angefügt)
- drag&drop von einzelnen dateien in die playliste
- zufälliges mixen der songs in der playliste
- shuffle funktion zum abspielen von der playliste
- import und export von winamp playlisten
- import und export von windows media player (9 und 10) playlisten
- eine datenbank wird nicht benötigt!
- 10 band equalizer
- spectrum anzeige (visualisierung)
- online streaming (shoutcast und icecast)
- fenster können aneinander geheftet werden

todo’s
------
also wirkliche todo's gibts für diesen player nicht mehr. ich habe mit delphi 5 angefangen bin dann umgestiegen auf delphi 7 und hatte immer probleme mit fremdkomponenten etc. deswegen wird es keine weiterentwicklung mehr geben.
leider wird auch das fmod interface für delphi nicht mehr unterstützt, dass ja das herzstück meines players ist (nein, ich möchte nicht auf bass umstellen).

dennoch, der nächste SimpleMP geistert in meinem kopf herum: **SimpleMP v2.0**

simplemp/main001.png[simplemp/main001-150x150.png]: main window 1
simplemp/main002.png[simplemp/main002-150x150.png]: main window 2
simplemp/02_medialist.png[simplemp/02_medialist-150x150.png]: media list
simplemp/03_playlist.png[simplemp/03_playlist-150x150.png]: play list
simplemp/04_streamlist.png[simplemp/04_streamlist-150x150.png]: internet stream list
simplemp/05_equalizer.png[simplemp/05_equalizer-150x150.png]: equalizer
simplemp/settings001.png[simplemp/settings001-150x150.png]: settings
simplemp/defdir003.png[simplemp/defdir003-150x150.png]: directories
simplemp/configcols001.png[simplemp/configcols001-150x150.png]: colum configuration
simplemp/configcolor001.png[simplemp/configcolor001-150x150.png]: color configuration
