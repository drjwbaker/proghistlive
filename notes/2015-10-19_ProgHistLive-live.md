# Notes (by James) from Programming Historian Live, 19 October 2015, British Library

**Live notes, so an incomplete, partial record of what actually happened. As I was following along with much of the demonstration/training on show, notes are particularly patchy**

______
## XML

What is markup? What is a text?

XML is a sort of tree.

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">Sitting in <a href="https://twitter.com/hashtag/proghist?src=hash">#proghist</a> TEI session, I&#39;m reminded that there&#39;s no better way to encounter (non-DH) editorial theory probs than by learning TEI</p>&mdash; Anouk Lang (@a_e_lang) <a href="https://twitter.com/a_e_lang/status/656053831172665344">October 19, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Self contained elements such as `<gap/>` can sit within a nest

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/hashtag/proghist?src=hash">#proghist</a> folks might find it easier to understand the &#39;nested&#39; structure of <a href="https://twitter.com/hashtag/TEI?src=hash">#TEI</a> when code is indented, eg. <a href="http://t.co/ThauxvD90R">http://t.co/ThauxvD90R</a></p>&mdash; Anouk Lang (@a_e_lang) <a href="https://twitter.com/a_e_lang/status/656058499772747776">October 19, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Then use XPath to give you all the things you tagged as X or Y

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">It&#39;s 12 and I think I actually understand XML. This day is a good day <a href="https://twitter.com/hashtag/proghist?src=hash">#proghist</a></p>&mdash; Lorna Richardson (@lornarichardson) <a href="https://twitter.com/lornarichardson/status/656060918783156224">October 19, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/AGroundw">@AGroundw</a> If you want to try later by hand, here’s the one I use with my students: <a href="http://t.co/wFmwiwAeTb">http://t.co/wFmwiwAeTb</a> <a href="https://twitter.com/hashtag/proghist?src=hash">#proghist</a></p>&mdash; Adam_Crymble (@Adam_Crymble) <a href="https://twitter.com/Adam_Crymble/status/656063154380652548">October 19, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

______
## XSLT

Displaying XML is a format other than xml.

XSLT is to XML what CSS is to HTML

You need a:

- database
- style sheet
- transformer

<xsl:value-of select="title"/> is in essence print 'title' field.

TEI Close Reading Task Melodee gets her undergrads to do https://github.com/mhbeals/tei-close-reading

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">Oohs in the <a href="https://twitter.com/hashtag/proghist?src=hash">#proghist</a> room as <a href="https://twitter.com/mhbeals">@mhbeals</a> shows us <a href="https://twitter.com/hashtag/xslt?src=hash">#xslt</a> transformations (&amp; beautifully curated github-hosted datasets)</p>&mdash; Anouk Lang (@a_e_lang) <a href="https://twitter.com/a_e_lang/status/656068513941950464">October 19, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Use case: someone gives you some data consistently wrong. XSLT lets you tranform it into the format you want.

______
## regex

^ beginning of the line

$ end of a line

[a-z], [a-f] anything within square brackets is like a big boolean or

`[^,]+,` - anything that is not a comma up until a comma!

`<[^>]+>` - finds all xml

`.+` is greedy, so don't use it too much!

*OT: for shell http://explainshell.com/*

______
## antconc

On concordance screen, use of kwic sort super useful for spotting patterns

Reference corpus can be added using `Tool Prefereces, Reference Corpus`

______
## wget

DIY finding a page

syntax: `wget http://peterwebster.me/2015`

To be a good citizen, restrict rate: `wget -w 5 ...`. This includes a delay between downloads

`--limit-rate=20k` then limit the rate to be even friendlier

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">Enjoying the fact that pedagogical tools by others &amp; absent collaborators (including students) are getting due acknowledgement at <a href="https://twitter.com/hashtag/ProgHist?src=hash">#ProgHist</a></p>&mdash; Alison Searle (@aasearle) <a href="https://twitter.com/aasearle/status/656131372893913088">October 19, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Recursively downloading, so `wget -r http://peterwebster.me` follows links, downloads what it finds, follows more links, downloads what it finds (default hops is 5, so you won't download the whole web by accident...)

`wget --noparent` - don't leave the website you are starting at

`wget -r -l 3` - limit recursions to 3

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/hashtag/proghist?src=hash">#proghist</a> <a href="https://twitter.com/ProgHist">@proghist</a> best slide of the day! <a href="http://t.co/9hsdAYF877">pic.twitter.com/9hsdAYF877</a></p>&mdash; Cornelis J. Schilt (@KeesJanSchilt) <a href="https://twitter.com/KeesJanSchilt/status/656134008061960192">October 19, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/hashtag/proghist?src=hash">#proghist</a> Having a true blast at the BL today <a href="https://twitter.com/ProgHist">@ProgHist</a> incl <a href="https://twitter.com/Adam_Crymble">@Adam_Crymble</a> <a href="https://twitter.com/a_e_lang">@a_e_lang</a> <a href="https://twitter.com/j_w_baker">@j_w_baker</a> <a href="https://twitter.com/pj_webster">@pj_webster</a> &amp; <a href="https://twitter.com/mhbeals">@mhbeals</a></p>&mdash; Cornelis J. Schilt (@KeesJanSchilt) <a href="https://twitter.com/KeesJanSchilt/status/656129710536183808">October 19, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

To make it into a warc file use: `wget --warc-file="filename" --no-warc-compression http://foo.bar`. Warcs will contain UX unlike html

____
### Some admin...

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons Licence" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

***Exceptions: embeds to and from external sources, and direct quotations from speakers***
