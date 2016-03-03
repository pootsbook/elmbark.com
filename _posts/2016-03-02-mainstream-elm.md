---
layout: post
title: 10 Reasons Elm is going Mainstream in 2016
subtitle: Poots Punts
---

Elm has impressed me and delighted me so much of late that I will almost exclusively be writing Elm in 2016. I believe that Elm has all the ingredients necessary to become a mainstream language and predict that it will do so in 2016. In some ways this is a leap of faith, as the choice of a new and up-and-coming programming language so often is. But true faith is never completely blind and the following factors give me reason to believe it is much more like a small step.

## 1. Going Mainstream is a public goal of Elm creator Evan Czaplicki

There may appear to be little rhyme nor reason to why a particular programming language sets the world alight, reaches a tipping point or achieves mass adoption, however it surely helps if you make that an overt goal. An audience member seemed a little taken aback with the closing keynote at [Curry On Conference 2015](http://curry-on.org/2015/sessions/lets-be-mainstream-user-focused-design-in-elm.html) ([video](https://www.youtube.com/watch?v=oYk8CKH7OhE)) where Evan shared this goal explicitly, expressing it in the title of his talk, “Let’s be mainstream! User-focused design in Elm”. The listener challenged Evan in the Q&A at the end ([48:56](https://youtu.be/oYk8CKH7OhE?t=2936)) stating that language adoption was completely random and could not be coerced or controlled. Evan neatly avoided confronting the veracity of that statement head on by saying that even if it is random, it surely helps to do the things that would help if it weren’t.

## 2. Evan is making a ‘product’ people love

Paul Graham in his 2009 essay ‘Startups in 13 Sentences’ articulates what I have frequently heard as a method of creating a successful startup. Instead of making a product or service that a lot of people *like*, rather concentrate on making something that a small group of people *love*s. 

> Better to make a few users love you than a lot ambivalent.

I can’t think of a language or framework in recent history that has caught the imagination or engenders praise quite like Elm. Personally, the only reference point I have is Ruby with Rails, and that was ten years ago. Browsing the @elmlang Twitter timeline will leave you in no doubt of people’s appreciation for Elm and will go some way in convincing you with the strength of feeling and emotion. Here are a few examples:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Picking up <a href="https://twitter.com/hashtag/elmlangsrc=hash">#elmlang</a> this weekend. It&#39;s incredible. Surely one of the most accessible and fun languages I&#39;ve used to date. Thanks <a href="https://twitter.com/elmlang">@elmlang</a>!</p>&mdash; Rohan Orton (@rohan_orton) <a href="https://twitter.com/rohan_orton/status/701332628696338432">February 21, 2016</a></blockquote>

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Writing my 1st app in <a href="https://twitter.com/elmlang">@elmlang</a>. Once I fix the compile errors, IT JUST WORKS. Never experienced anything like this in 30+ years of coding.</p>&mdash; jf cloutier (@jfcloutier) <a href="https://twitter.com/jfcloutier/status/693569076984168448">January 30, 2016</a></blockquote>

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Got back coding daily in 2015, longest streak was 100 days. All down to the excitement of Elm <a href="https://twitter.com/hashtag/code2015src=hash">#code2015</a> <a href="https://twitter.com/elmlang">@elmlang</a> <a href="https://t.co/O8gaNWQaf7">pic.twitter.com/O8gaNWQaf7</a></p>&mdash; Noah (@eeue56) <a href="https://twitter.com/eeue56/status/683032004275908609">January 1, 2016</a></blockquote>

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">more than 25 opened tabs about <a href="https://twitter.com/elmlang">@elmlang</a>, I think I’m in love</p>&mdash; Roberto Soares (@bt1) <a href="https://twitter.com/bt1/status/704842443020234752">March 2, 2016</a></blockquote>

## 3. *Who* loves it 

An equally important factor as people people loving it is who those people are. It cannot be coincidence that Elm has captured the imagination of our elite. Well respected authors and speakers like Jessica Kerr, ‘[I never enjoyed front-end development, until I found Elm.](http://blog.jessitron.com/2015/08/an-elm-example-reading-url-parameters.html)’; James Edward Gray, ‘[super fun language](https://twitter.com/JEG2/status/651783590385074176)’; Andre Medeiros (creator of Cycle.js) is often effusive in exhorting people to experiment with Elm; Dan Abramov (creator of Redux.js) credits Elm for elements of the library’s approach and success. These have taken more than an active interest in Elm and on the flip side, more unheralded practitioners are singing its praises. That some of these were early adopters of Ruby has not escaped me, but rather reinforced the impression that it is something to sit up and take notice of. Even Brendan Eich (creator of JavaScript) [digs it](https://twitter.com/brendaneich/status/642171349327286272).

## 4. It is a compelling antidote to JavaScript (framework) fatigue

The vicissitudes of the modern JavaScript programmer have been well documented of late and many responses or rebuttals have consisted of iterating that you do not get all the benefits of modern JavaScript for free. And that’s true, but really the argument is about _who is paying_. The contention is whether the layman or the library-/tool-maker should be footing the bill. Unless I was mistaken, it seems the consensus was that things would improve in time but until then you are on your own.

Elm offers a much more compassionate world where much of the minutae is, by design, non-existent. Versioning conflicts may be a thing of the past thanks to Elm’s type system and the package-manager’s use of it to reject incompatible upgrades. JavaScript itself is becoming more like the ecosystem around it with rapid change occuring not just in libraries but in the language itself—and forgive me for observing that many changes, while for the better, seem whimsically and experimentally brought about. The surface area of JavaScript is increasing, becoming more complex and sometimes at odds with itself.

With Elm, it is small, learnable, and changes are thoughtfully and carefully introduced (sometimes even remaining non-committal so the best decision is made at the right time; like lean manufacturing applied to language design with just-in-time production by taking decisions at the last responsible moment).

## 5. Elm Embraces our Functional Future

Only the most die-hard object-oriented programmer would have encapsulated themselves to the extent that they were ignorant of the steady and rising beat of the functional drum. Elm is a gateway drug to picking up the functional programming bug. Elm eschews the snobbery often associated with the product of the academy and gives the layman reason to school himself. It makes functional programming accessible, and by bringing it to the front-end, gives people a good reason to learn it (and use it).

## 6. Elm is Friendly

Elm is an incredibly friendly language thanks to its helpful compiler. Where others leave you feeling stupid for operator error, Elm most graciously lets you know where you went wrong and how you might fix it. Gone are the minutes (hours?) wasted on one character typos or bouts of head-scratching or hair-pulling because of forgetting to update that obscure call to a function you just renamed.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Error messages from <a href="https://twitter.com/elmlang">@elmlang</a> compiler are so useful and friendly <a href="https://t.co/AUhbUgVZSa">pic.twitter.com/AUhbUgVZSa</a></p>&mdash; Laurent Paoletti (@providenz) <a href="https://twitter.com/providenz/status/670518219355119617">November 28, 2015</a></blockquote>

## 7. Elm is Gathering Momentum

It’s clear to see that Elm is already gathering momentum, whether that’s in the number of new libraries introduced, the number of posts on the mailing list, the tweet volume or the number of companies using it in production. Elm has started on a trajectory.

## 8. Elm is not Fronted by a Major Corporation

This can always go either way. Elm is not fronted by a major corporation but the support model looks like it will be a conglomeration of small companies. This is more similar to technologies like Rails, PostgreSQL and Ember.js than it is React or Angular. That’s not to say it might not get picked up in the future or that corporate support is a bad thing, but it has support.

When I drafted this Evan Czaplicki was being supported by Prezi to work on Elm full-time, and now NoRedInk have taken over that responsibility while Prezi are helping set up the Elm Software Foundation. The fact that NoRedInk is a startup, supporting a language creator full-time, is almost unprecedented at such an early company stage, but demonstrates just how much they consider Elm key to their success. (As a counterpoint, Heroku hired Matz, creator of Ruby, in 2011, _after_ Salesforce acquired them for $212m).

## 9. Elm has Great Documentation and Learning Materials

Elm’s package site, which also includes the core language documentation, is a joy to use. Searching, browsing and reading the documentation is done incredibly well and it is easy to get what you are looking for. In addition, the website offers great introductory material, including the excellent Elm Architecture Tutorial and is well supplemented with the highly recommended Pragmatic Studio screencasts. Where there are gaps, I am sure they will be filled as more people kick the tires.

## 10. Elm has Tremendous Potential

There’s far too much to squeeze into a small paragraph but being a functional programming language with immutability baked in opens up many possibilities for better (time-travelling) debugging, visualisation of your code / program, and potentially interactive programming *à la* Inventing on Principle by Bret Victor. Proof of concept has been done with Elm native and I am sure that soon we will be able to have Elm on the back-end with Node.js or likely native with another compiler or runtime.

## 11. Evan Czaplicki Joined NoRedInk

This happened the day that I drafted this post (a while ago, I know), so it’s worth including it as a major positive direction for Elm. This is the uniting of the brains and the braun of Elm. Richard Feldman at NoRedInk is Elm’s most ardent proponent, humorously regaling us with the self-evident benefits that he, and subsequently NoRedInk, have experienced when migrating to Elm. They are likely Elm’s largest production user. In combination with Evan, who is actively developing Elm full time this means there will be a much tighter feedback loop for future experimentation and language implementation and improvements.  

You should try Elm out, bearing in mind that Elm is still relatively young and small so it will undoubtedly experience some growing pains but I believe it is already worth making the jump. I have.
