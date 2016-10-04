---
layout: post
title: The way to the goetas-webservices/client release
tags: ["php", "xml", "soap", "webservices", "rest"]
year: 2016
month: 9
day: 29
published: false
summary: After many years of work, finally I have released a fully PHP based SOAP client up to date with the latest best practice.
tweet: 780742109691248642
---

I started to work on this project (let's say technology) almost 10 years ago 
while was working at [Mercurio Sistemi](http://www.mercuriosistemi.com/)...

Everything started with a customer that had an already existing [SOAP webservice](https://en.wikipedia.org/wiki/SOAP), 
this webservice was necessary to integrate their existing Visual Basic (.NET ? ) application stack with a new PHP website.
Fortunately PHP had already "ext-soap" that allows to communicate with it and the task was pretty easy.
 
This is how I was introduced to SOAP...

After some time and many completed integrations, client and server side, I was looking enviously to some .NET and Java 
developers, and how easy, "safe", was working for them with SOAP webservices.

This was mainly because of some commodities their programming language and IDE was providing them.
Auto completion, static checks, code generation were just great, and their job essentially was just about choosing the 
right variable name or method call from a list provided by their IDE.
Of course if something was wrong, their IDE or some software tool will warn them, telling: "hei! here something is wrong
fix it, otherwise yor webservice will not work well". 

That was just great, errors were discovered even before saving the file containing the code, and often errors were 
auto fix-able by this set of tools.
PHP on the other hand was a jungle... tons of arrays, stdClass instances, caches to be refreshed, and even more 
variables, properties that needs to be guessed by the developer and so on.

I tried many libraries but not a single one was close to the .NET webservices implementation or Java Axis and similar.

Things got even worse when I had to integrate in our system an [OTA](https://en.wikipedia.org/wiki/OpenTravel_Alliance) 
company. OTA is a set of specifications built on top of XML on how to communicate between travel-focused companies as flights companies, 
hotel chains, car rentals and so on.
OTA is a great set of standards but for the PHP soap ecosystem, is just crazy complex.

I started blinding some scripts to generate PHP classes from the [XML Schema](https://en.wikipedia.org/wiki/XML_schema)
definitions provided by the Open Travel Alliance, to have some hints by my IDE, in order to increase productivity, and
reduce bugs.

To me was looking the right way... in the mean while I have released [goetas/xsd2php](https://github.com/goetas/xsd2php)
(used to generate PHP classes) and a set of other libraries as [goetas/webservices](https://github.com/goetas/webservices)
that essentially was my final goal, a fully PHP based SOAP client and server.

But as every developer should do, for me the result was not good enough and I continued working on it.
Was not good because there were still so many things not working well, complex xml parsing done on each webservice call, 
no tests, some edge cases were just not working, and the whole result was looking really unstable.

So I decided to restart from scratch (almost from scratch).

[jms/serializer](https://github.com/schmittjoh/serializer) was mature enough to do the XML serialization/deserialization
 even for some really complex cases, PSR-7 was out and great HTTP clients were available.
 
This put on me even more motivation and the current result is good enough, of course there is plenty of work that still 
has to be done! Multiple things needs to be added, improved, fixed, and so on, but I decided that was the time 
to release [goetas-webservices/soap-client](https://github.com/goetas-webservices/soap-client)!

The project is released under a [MIT](https://en.wikipedia.org/wiki/MIT_License) license 
and is freely available on [GitHub](https://github.com/goetas-webservices/soap-client).

Some of the strengths of the project are:

- Pure PHP, no dependencies on ext-soap
- Extensible (JMS event listeners support)
- PSR-7 HTTP messaging compatible
- Multi HTTP client (guzzle, buzz, curl, react)
- No WSDL/XSD parsing on production
- IDE type hinting support


So, if you need a SOAP client for your project, give it a try! 

In the mean while I have in plan to release soon also a fully PHP SOAP server. 
You can [follow me](https://twitter.com/goetas_asmir), if you are interested to know more about it.


A note that has to be said about this is that, in the last years 
[REST](https://en.wikipedia.org/wiki/Representational_state_transfer)
arrived and changed completely the way on how webservices are built, somehow deprecating SOAP. 
I see also on the way also [GraphQL](https://en.wikipedia.org/wiki/GraphQL) trying to deprecate REST too.

So, was it worth working on this project? Definitely yes! I have learned a lot, and I think there are still many 
developers struggling with legacy applications every day as I did.


If somebody has some feedback, please just drop me a line at [goetas@gmail.com](mailto:goetas@gmail.com) 
or tweet me at [@goetas](https://twitter.com/goetas_asmir)
