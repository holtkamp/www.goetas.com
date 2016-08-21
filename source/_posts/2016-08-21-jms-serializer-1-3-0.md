---
layout: post
title: Some notes about JMS Serializer (plus v1.3.0 release)
tags: ["php", "jms-serializer", "json", "yaml", "xml", "serialization"]
year: 2016
month: 8
day: 21
published: true
summary: It is almost a month that I started as maintainer of JMS Serializer and today I'm proud to announce the release v1.3.0 of JMS Serializer that contains many bug fixes and the new method "hasData" for generic serialization visitors (JSON/YAML)
tweet: 767349987311255552
---

It is almost a month that I started as maintainer of [JMS Serializer](https://github.com/schmittjoh/serializer) 
([here](http://jmsyst.com/libs/serializer) is available the official documentation).
I started to contribute to this project almost two years ago, with some small pull requests
necessary for [xsd2php](https://github.com/goetas/xsd2php) ( a tool to convert XSD XMLSchema definitions into PHP classes and instances). 

JMS Serializer allows to serialize/deserialize into/from JSON/XML/YAML. 
The main advantage I see in this project, compared to other similar tools, is that uses "declarative" approach.
 A declarative serialization requires often no special code to handle the serialization/deserialization process, 
and this reduces the number of possible bugs.
Configurations can be defined as XML files, YAML files or Annotations.



In the last year (or two) it appeared that JMS Serializer was not really well maintained,
the feedback loop was really long (some PR took 3 years to be merged or closed),
the PR count was about 200 and the issue count was more than 300.
The first thing I did was going trough the long list of issues and pull requests, 
closing what was not valid anymore (some were 4 years old), finding or closing duplicates, 
asking for feedback and merging what was good to merge.

This was not an easy process, often PR were really old, but some authors 
were really kind, rebasing or explaining really "ancient" issues they were solving.
Of course in some cases, authors express their disappointment or confusion seeing their PRs 
being closed because now outdated.
But this was to me, a know consequence of my work, so I continued to do my job.


Now after almost 30 days, we had two releases, with more than merged pull requests.
The new PR count is around 60, now the number of open issues decreased to ~200.
Was also really cool to see some appreciation from authors (contributors via PR to the project)
for the new "life" activity of the project.

The JMS Serializer activity is pretty high, 
 nowdays it has more than 13000 downloads via composer every day.
To me, this is a clear signal of the strategic importance of this project for many people and companies, 
and this makes me proud and motivated to continue improving it.

If somebody has some feedback, or drop me a line at [goetas@gmail.com](mailto:goetas@gmail.com) 
or tweet me at [@goetas](https://twitter.com/goetas_asmir)



