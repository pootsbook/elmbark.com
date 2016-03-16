---
layout: post
title: 'Let’s be mainstream! User focused design in Elm'
subtitle: Transcription of a talk by Evan Czaplicki
---

This is easily the best talk currently available for grasping the essence of Elm. It was delivered by Elm creator Evan Czaplicki as the closing keynote for the Curry On conference in Prague on Tuesday, 7th July 2015.

I thought it would be useful to have a written record for easy reference so I got it transcribed and am sharing it here on the blog. I managed to grab some screenshots in absence of slides and have included code where necessary to adequately reflect the context. Any headings or emphasis mine, purely to aid the reader.

*Transcription is never perfect. If you spot any inaccuracies you can open a Pull Request with a correction. I have given the transcription a once over to remove verbal tics and ensure general faithfulness.*

<hr>

## Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/oYk8CKH7OhE" frameborder="0" allowfullscreen></iframe>

*From the [Curry On Conference YouTube channel](https://www.youtube.com/watch?v=oYk8CKH7OhE).*

<hr>

## Abstract

If functional programming is so great, why is it still niche? We have a product that can practically eliminate runtime errors, make refactoring much easier, lighten the testing burden, all while being quite delightful to use. What’s the hold up?

One factor is that we make things artificially hard to learn, sometimes with a seemingly pathological glee.

So one of my primary goals is for Elm to be extraordinarily easy to learn and use productively. I want a new user to start playing with real code in minutes. I want programmers to feel confident in Elm in a few days. This talk will demonstrate some concrete cases where Elm uses language design, library design, terminology, and culture to accelerate learning and ultimately help people make delightful products.

![](/assets/images/posts/1/001.png)

*From the [Curry On Conference website](http://curry-on.org/2015/sessions/lets-be-mainstream-user-focused-design-in-elm.html).*

<hr>

## Transcript

![](/assets/images/posts/1/002.png)

Hi, I’m Evan Czaplicki. Depending on where you’re from, you might say it different. I designed this programming language called Elm that’s focused on front-end programming, so doing stuff in the browser, interactive applications, games, this kind of thing. I’m coming from a perspective of typed functional programming, and one thing that I think of a lot is this question, **if typed functional programming is so great, how come nobody ever uses it?**

I think this is a question that people outside of this community ask, and I think it’s a reasonable question for them, just as a filter. Obscure things aren’t always amazing. It’s something that I don’t think we ask within that community enough. Why is it that we don’t have more users if it is true that we’re doing something really great? **The rough theory is that we’re engaged in a decent amount of self-destructive behavior.**

I want to talk about how Elm… how I think about these things and how Elm tries to do a better job dealing with those things. I also don’t want to be a mean guy, so I tried to frame things in a positive way and not be too mean or anything. This is all meant as a “**How can we do better?**” kind of thing.

### The History of Programming

For me, I think it’s valuable to think about the history of programming in trying to figure out what’s going to come next. This one is actually “The history of programming as seen from JavaScript.” If you try to do a… I tried to do a more realistic history—it just broke down. **What does history look like from JavaScript world?**

![](/assets/images/posts/1/003.png)

In the beginning, there was **Assembly**, and it was hard, but somehow people wrote Super Mario in it, so that was pretty cool, but we got to this crisis point where things weren’t working out anymore, so along came C. Now we have this structured programming approach, and okay, that’s not exactly how history went, but this is as seen from JavaScript.

![](/assets/images/posts/1/004.png)

So, **C** comes along and suddenly we’re not doing this really low level thing. We’re doing a much higher level thing, and that’s true for many, many years. At a certain point, we get to this other crisis point and **Java** comes along and we’re like, “Oh, great. This is amazing.”

![](/assets/images/posts/1/005.png)

And eventually, we get into **JavaScript**.

![](/assets/images/posts/1/006.png)

And these are roughly arranged time wise, it doesn’t exactly line up time wise, but **from the perspective of JavaScript, you sort of say, “Well, before us, there was Java, and before then there was C,”** and it’s kind of true enough. In fact, it’s true from that perspective, so it might as well be true.

When we look back, the C, and Java, and JavaScript programmers can all look at Assembly and be like, “Ah, it was a maintainability nightmare. I couldn’t write this in a portable way. I couldn’t have people read this easily. We solved that when we went to C.”

![](/assets/images/posts/1/007.png)

Now the Java and JavaScript programmers look back and it’s, “Ah, memory management. How could they even deal with that in that crazy language back in the day?” Those were the ingredients of this crisis point that it was perceived how we got to Java.

![](/assets/images/posts/1/008.png)

When JavaScript looks at Java, they’re like, “How did people deal with all those freaking types? How could you get anything done at all?”

![](/assets/images/posts/1/009.png)

**I have a feeling that we’re at another one of these crisis points where the issue again is maintainability.**

![](/assets/images/posts/1/010.png)

When you talk to companies that have fifty thousand or a hundred thousand lines of JavaScript, they’re in this place that when they add a new feature, they’re going to break three. One way I think of it is, Facebook used to say , “Move fast and break things.” I think it’s sort of shifted to, “Move slow and break things.”

What I’m getting at though is that at a large enough scale, people are starting to see issues in practice. That’s not to say that this isn’t a valuable place to be, but we’re starting to get these rough spots.

### The Future of Programming

The question you might ask then is, “**Okay, so what’s this next era going to be? What’s the next part of this history?**”

![](/assets/images/posts/1/011.png)

**Maybe that’s something functional.** Maybe it’s way crazier than we imagined and it’s a stack-based language or a Prolog, something insane happens. Maybe Types will be involved, maybe not. Like a Lisp or a ML. Maybe it’ll be something gradually typed. These are all viable in different degrees. I add Prolog and stack-based because these are small communities that people really love a lot and maybe they’re great. They say they’re great. Should I believe them? I don’t know.

![](/assets/images/posts/1/012.png)

**For me, I think a typed functional language is going to address a lot of these issues.** We can look back at history and say, “We got the memory management under control. We got all those freaking types under control, in the sense that if you can infer all of that information, you get a lot of the benefits without the really heavy syntax that a lot of JavaScript programmers look at and they’re like, euurgh… and then maintainability as well.

The problem with that is that in 1973, ML was introduced. This is one year after C. C was 1972. For some reason, that didn’t work out. Something mysterious happened. So we had another chance in 1990. Standard ML came out. This was actually five years before Java. Java is 1995. We could have gone that route, but for some reason it didn’t happen. In 1996, we had OCaml. This is one year after Java. It has objects. It’s got it all. What’s the problem?

![](/assets/images/posts/1/013.png)

In all of these situations, we’re sort of addressing the core concerns, but in a way that for some reason didn’t connect and didn’t make it big. When we think about what’s going to happen next, **I think it makes sense to ask who’s going to be deciding what happens next?** We’ve got this massive chunk of front-end programmers, people who’s day-to-day is making web applications, making games, and you’ve got this tiny population of people using typed functional languages.

![](/assets/images/posts/1/014.png)

This isn’t to scale. I don’t know how small that red dot should be, but… To try and put it into perspective, Oracle says that there are ten million Java programmers. If I try to do some estimation, I can say maybe there are like two hundred thousand Scala programmers? Maybe more, maybe less. Then how many Haskell programmers are there? We’re talking orders of magnitudes of difference here. The number of jQuery users is way huger than the number people who are doing these functional languages. I think. I don’t know.

#### What do Programmers want?

If this giant group of front-end programmers are going to be deciding, we should understand what they want in this next era of programming. **I think there are two main axises that we can think about that are helpful here.** We have JavaScript and the x-axis here are usable. What I mean by usable is the ability to use it.

![](/assets/images/posts/1/015.png)

I define that as the time it takes to get a novice level to actually a product that you can show your friends and be like, “Hey, check this out.” I wanted to demo something real quick.

![](/assets/images/posts/1/016.gif)

This is Google. I’m using JavaScript. The time from novice to getting something done, it’s unreal, it’s crazy. I don’t think anything has really matched that. If this was a competitive market, this would probably be like an abuse of market position that it’s baked in in this way, but it’s really, really easy to get started here.

If you’re doing some… let’s say you want to get a webpage up. Maybe that’s a five minute or an hour long process, even for someone that’s a total beginner. That’s a really amazing ability to use the language. The issue people are having is about maintainability, “Now I’ve got fifty thousand lines. The company is successful and we’re getting new users, trying to add new features, but we’re having trouble doing that.”

![](/assets/images/posts/1/017.png)

Another point on this map is Java. We have much more maintainability here but the usability is down. This is more about the time it would take to start using Java is just longer. Rather than five minutes or an hour, you’re looking at something a little more. Part of that is learning time. Part of that is getting things installed, getting things set up.

![](/assets/images/posts/1/018.png)

From the JavaScript programmers’ perspective, this is a no go. Partly from the maintainability and usability, and partly from an emotional, crazy standpoint where it’s rather like, “Ugh,” that’s kind of the logic of, “This isn’t viable.”

![](/assets/images/posts/1/019.png)

What we want is to get that maintainability and either keep the usability, or even improve it a bit.

![](/assets/images/posts/1/020.png)

The direction people are taking here is gradual types. You’re seeing this come out of Microsoft and Google. A lot of companies are betting in this direction. You can keep the usability profile where when you start out, it’s very simple, and as you’re thing grows, you can add types to it.

![](/assets/images/posts/1/021.png)

What I don’t know if people are thinking about is what is the end game here when we have a JavaScript program that is fully typed? Like, didn’t we make Java again? I don’t know, maybe not. But there’s something here where I don’t know if that’s quite an exciting resolution. I don’t know if that’s what will satisfy people, but it is addressing the main concern. We get this maintainability. What a lot of JavaScript people don’t realize is that this graph is actually way bigger.

![](/assets/images/posts/1/022.png)

You can be much less usable than anyone imagined. What’s interesting though is that you can actually be way more maintainable than a lot of people think about as well.

![](/assets/images/posts/1/023.png)

In the top left corner, we have the ML family languages. This is Haskell and OCaml. I can speak to my experience getting started with Haskell that led me to put it in this corner. I’d say it was a good year before I was like, “I’m pretty good at this.” It’s just not that way in other languages. When your setup takes a couple of days and the learning process takes months or years, potentially, to get to an expert level, it’s making things really hard for people. The important point here though is that the levels of maintainability that are available are way higher than people think about.

What I want to do is, I want to get to this magic realm where we get that level of maintainability, but we have something usable. We have something in an hour or in five minutes, people can get started with and be productive.

![](/assets/images/posts/1/024.png)

The question is how do we get from here to there?

![](/assets/images/posts/1/025.png)

This is a trick. This isn’t actually the thing we want to focus on.

![](/assets/images/posts/1/026.png)

It doesn’t make sense to try to move these languages to this nice place because that means we’re moving a really small set of users to a place that they generally don’t necessarily want to go, in the sense that if you make a really nice front-end programming language for people who don’t do front-end programming? I don’t know…

The thing you want want to do is actually get JavaScript to this nice place.

![](/assets/images/posts/1/027.png)

When you focus on what a JavaScript programmer needs to get there, you end up making different design decisions. This is kind of the shape of the world from, sort of as I see it.

### User-focused Design Principles

The next thing we think about is what does this mean for designing Elm? The broad category I named this is user-focused design in Elm.

![](/assets/images/posts/1/028.png)

I know that I am designing for people who are doing front-end work and they have specific issues that they need addressed. If we’re able to address them the best, we’ll win. If we aren’t the best, maybe some random things will happen, but if we can do better, then we have a better chance.

#### Gradual Learning

The key design principles here are, first, **gradual learning**. When you have a bunch of stuff to get used to, it’s good to have a really nice learning curve. In JavaScript, you can start doing stuff really quickly. In Python you have this. In a lot of functional languages, you don’t. On day one, you get smacked with a lot of details, a lot of intense sounding stuff. Is it possible to make progress and be productive without learning all that on the first day?

![](/assets/images/posts/1/029.png)

#### Communication

The second one is **communication**. Maybe we have something good, but are we able to tell people that in a convincing way? I think right now we don’t do well with that. That one I have a lot to say about.

![](/assets/images/posts/1/030.png)

#### Culture

Finally, we have **culture**. What does the community focus on? What do they find important?

![](/assets/images/posts/1/031.png)

You’ll notice that so far I haven’t talked about anything strictly technical. This is all sort of community, cultural, it touches on documentation, but it’s going to impact the technical decisions I make. I think this is also stuff that can be designed. This is something you can think about and do a better or worse job at.

#### Usage-Driven Design

One of the last points is **usage-driven design**. Based on these sort of foundational things, what does it mean to add a feature?

![](/assets/images/posts/1/032.png)

#### Tooling

Finally, we have **tooling**. So, how can we do a really good job of making great tools?

![](/assets/images/posts/1/033.png)

Okay, let’s get into this.

### Gradual Learning

Gradual learning, this is something where I think it needs to be designed into the language and libraries to really work. You can design the language such that as someone gets started and gets productive, slowly they realize these concepts in a way that builds upon each other in a way that works for people.

![](/assets/images/posts/1/034.png)

A nice example of this in Elm that came out recently is called `StartApp`. This is a little `StartApp` program:

```elm
import Html exposing (div, button, text)
import Html.Events exposing (onClick)
import StartApp


main =
  StartApp.start { model = model, view = view, update = update }


model = 0


view = address model =
  div []
    [ button [ onClick address Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick address Increment ] [ text "+" ]
    ]


type Action = Increment | Decrement


update action model =
  case action of
    Increment -> model + 1
    Decrement -> model - 1
```

I have start and I give it a model, a way to view that model, and a way to update that model. This is just a counter that I can increment and decrement. The initial model is zero. I view it, so I’m generating some HTML here, a div, it’s got a button, I say what the number is, and then another button, and I have a way to update it, so I increment it sometimes and I decrement it sometimes.

Someone can get started programming without really doing any functional programming. This isn’t that far off from something like CoffeeScript. You can actually get something going in very little time without getting hit with a ton of crazy concepts. I had a… I visited the WWDC conference and met a guy who did a lot of Swift programming. He opened up this program and just added a reset button and in the first couple of minutes, like two minutes in, and he didn’t really know what was going on but he was able to add a feature.

That’s amazing, right? He didn’t have to read a tutorial. He didn’t have to read a paper. He just looked at the pattern, added a thing in, and added the feature he needed. That’s a great learning curve. He’s able to start doing and have the confidence to do stuff and slowly fill in the gaps.

I think this focus on gradual learning is a big part of why we’re starting to see some education uses of Elm. There’s a class at U Chicago that was taught in Elm and they did a mix of doing front-end stuff and doing some data structure stuff. There’s also one called the McMaster Outreach. This is a program for fourth through eighth graders. This is a session they did. These are some kids who are writing in Elm’s online editor and they made Spider-Man.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Woohoo! We&#39;ve outreached to 1500+ students and staff this summer. They sure are loving <a href="https://twitter.com/hashtag/ELM?src=hash">#ELM</a>, <a href="https://twitter.com/hashtag/binary?src=hash">#binary</a> &amp;our <a href="https://twitter.com/hashtag/iPad?src=hash">#iPad</a> apps! <a href="http://t.co/f57VZQbIVl">pic.twitter.com/f57VZQbIVl</a></p>&mdash; McMasterCASOutreach (@MacCASOutreach) <a href="https://twitter.com/MacCASOutreach/status/615589693569277952">June 29, 2015</a></blockquote>

Someone has a question, I’m sure he got it thought eventually. They also have a [Hall of Fame](http://outreach.mcmaster.ca/menu/fame.html) of stuff that people have made. This was made by a sixth grader.

![](/assets/images/posts/1/035.png)

This one is crazy. A fourth grader made this.

![](/assets/images/posts/1/036.png)

How did he even watch the movie? You start to see this is something you can get up to speed with in a really nice way.

### Communication

The next topic is communication. This is something where I think we can do a lot better. I want to do a little thought experiment. You’re going to hear six pitches trying to solve the same problem.

![](/assets/images/posts/1/037.png)

Essentially, you’re a busy person. Maybe you’re a team lead, you just had your first kid. Things are going crazy. The project you’re working on is more people than you’ve managed before and you’re looking around for the right way to deal with that.

![](/assets/images/posts/1/038.png)

You hear there’s this JavaScript library for building user interfaces. Well, I use JavaScript, I need to build user interfaces. That sounds pretty good.

![](/assets/images/posts/1/039.png)

You can write JavaScript the way you really want to. That’s actually exactly how I want to write JavaScript, that sounds really good.

![](/assets/images/posts/1/040.png)

You can have a framework for creating ambitious web applications. I actually really love this one because it guilts you into it. It’s like, do you want to write an unambitious one? I think that one’s really well done.

![](/assets/images/posts/1/041.png)

Maybe you want HTML enhanced for web apps. Exclamation point. It’s weaker. I don’t know if I’d look into that one.

![](/assets/images/posts/1/042.png)

Maybe you want scalable productive app development. Sounds kinda Java-y, but I could be into it. I could check that out.

![](/assets/images/posts/1/043.png)

Maybe you want an advanced, purely functional, yeah, advanced purely functional programming language. Well, do I want something advanced? Do I want something purely functional? Do I have a lot of code that’s not that? Is a programming language necessarily the solution to this thing?

You’re really not connecting with people who are looking at this thing, at a very early stage, people who are just glancing through. They don’t have time to spend six months learning about the different characteristics here and why it’s a good idea. They’re just going to look at this and say, “I want to build these interfaces.” We lost. We missed. The person moved on.

![](/assets/images/posts/1/044.png)

Essentially, the question is how likely are you to explore the one that doesn’t directly address your problem? How often do you hear a pitch that doesn’t make sense to you and then when you look into it, it actually works?

The general advice I have is, “Be direct.” You want to say exactly what you’re going to provide. Another way to say this is to leave nothing to the imagination.

![](/assets/images/posts/1/045.png)

You don’t want someone making four mental jumps before they understand what you’re saying. You want it to be an immediate comprehension.

I have a couple of examples here and I’m going to try to keep it chill. One word that we use a lot is pure function.

#### Pure Function

![](/assets/images/posts/1/046.png)

The way I’m going to do this is sort of deconstruct the word from a JavaScript perspective and then provide an alternative that I think is better. Pure function. I don’t know what that is. It implies that there are impure functions. Neither of these things are things that I have in my worldview as a JavaScript programmer.

At that point, some people will move on and say, “That doesn’t seem interesting.” Some people will go to Wikipedia and look up what a pure function is, and they’ll say, “Okay, I guess that kind of makes sense.” At that point, some people will say, “I don’t know if that’s really relevant to me,” and move on. Some smaller faction of people will say, “Okay, that might be interesting,” and then they’ll look into it more. We took so many jumps to get to someone potentially being interested, that we’re losing a lot of people.

![](/assets/images/posts/1/047.png)

I have had a lot more success saying stateless function. JavaScript programmers have state. They know that it often causes issues. What if you didn’t have that state in a lot of your functions? It directly connects to something that happens day to day in your code and says, “Hey, what if you didn’t have the problems that come from that?” I don’t know if that’s the perfect term, but it’s certainly an improved term, one that connects to how people use stuff.

![](/assets/images/posts/1/048.png)

#### Easy to Reason About

Another phrase that people say a lot is “easy to reason about”. My mom, she likes to review my work. She actually read my thesis before it was time to turn it in. She came across this phrase and she was like, “I don’t think this is English. I think you forgot some number of words.” Easy to reason about. It’s not really clear what that’s going to give me. Was it hard to reason about? I’m a JavaScript programmer, I spend a lot of time reasoning about what my code does because weird stuff can happen.

![](/assets/images/posts/1/049.png)

Another way to say this is “It’s easy to refactor”, just connect it directly to what’s happening in your code. Do you have problems refactoring? Well, what if it was easier? You can kind of take the inference steps and say the last one.

#### Safe

![](/assets/images/posts/1/050.png)

Another one is safe. Type people like to talk about safety, but safety is kind of boring. A safe investment is like bonds. No one is really like, “Oh, bonds, yeah. Yeah, you should see my bond portfolio. It’s been like two percent growth. It’s amazing.” Another, the image of like floaties. That’s what I think of when I think of safe. To connect it more to code, when I write JavaScript code, I don’t think about it as safe or unsafe. It’s not like it’s going to punch me. It doesn’t really connect with how I think about the code.

![](/assets/images/posts/1/051.png)

We’ve been saying reliable, in the sense that you know you get runtime errors in JavaScript. What if you had a program that didn’t do that? What if you had the reliability that you want.

#### Monad

![](/assets/images/posts/1/052.png)

Last one is monad. This is a term that I struggled with a lot. I don’t know how many people go and say that, but I would say it was a good six months to a year before I felt I really was like on board… I won’t say on board, before I really understood what was going on there. I think I didn’t have a deep understanding for maybe a year or two more after that. When I finally did understand, I was pretty upset that it wasn’t actually a complex thing. There’s something about this term that it asks you to think that it’s complicated. My experience learning it was, “Oh, I want to print something out. Okay, I’ll use a monad. Well, that needs category theory. Should I buy a book on category theory?” I’m not learning from a professor or someone who has used Haskell a lot. I’m just sort of going through what would make sense. “Here’s a term that I don’t know, well then, I should learn what it is. Oh, it’s dependent on this? I should learn about that.”

A Haskell person would say you don’t need to buy a book on category theory, but Haskell is saying you should. I need to know about monads. There’s a story I like to tell that sort of reveal this is in a way that doesn’t actually connect to people’s preconceived notions. Let’s say there’s a person, they have an apple in each hand. They say, “I have an apple and I have an apple. How many apples do I have total?” You say to them, “Well, first you need to understand group theory. There are four laws: commutativity, associativity, identity, idempotency. You can do all these commutative operations if you follow the rules, it’s really cool,” and they see that the person is like, “Huh? I have an apple here and I have an apple there. How many apples do I have?” … “Let’s be more concrete. Multiplication on integers is a group. Rotation in 3D space around an axis is a group. Do you get it?”

When you put it in that framing, it sort of reveals that it’s a crazy way to teach addition. There’s a reason we don’t take that route. Maybe that route works for some percentage of people who are learning, but I’d say for a vast majority, let’s say 95% of people, saying “two” is a better explanation.

The point I’m making here isn’t that this is an unimportant concept, but it’s one that we emphasize very, very early, very, very emphatically. Sometimes in a way that’s actually confusing. Another aspect of this is often people say like “the state monad”, “the IO monad”. It’s a very weird thing because it makes the monad like it’s a physical thing. It’s like saying, “Oh, you want to add numbers? Just use the addition group.” Like, why would you say that? Just add them.

There are a lot of ways that we can deal with this. The general thrust of it is you can essentially be very active using monadic things without ever talking about it. In JavaScript, for example, the Promises library has a function called “then” so I can say, “Here’s the thing I want to do and when it’s done THEN do this thing. THEN do this other thing.”

![](/assets/images/posts/1/053.png)

We’ve found it’s really effective to say “callbacks”. I suspect people will be mad about this.

If we look at… we have this “andThen” function in a bunch of different libraries. In maybe, for example, I can say … Here it is, [here it is](http://package.elm-lang.org/packages/elm-lang/core/2.1.0/Maybe#andThen).

![](/assets/images/posts/1/054.png)

Try to turn it into an integer and then turn it into a valid month. You can read it the first time through. It’s not crazy. Do this and then do that. We don’t have to talk about any concepts here. We just say, “Give us a maybe and give us a callback. If you’re successful, we’ll keep going. If you’re unsuccessful, we’ll fail.” You’re able to get the core concept in a way that doesn’t introduce any extra stuff. As people start seeing this in different libraries, maybe they’ll be interested in the general pattern. The point is you don’t have to understand the general pattern to get up to speed and use this kind of thing.

*When you want to tell something, there’s a general pattern here. What do you call it? Is it a little bit like we say…*

You call it a monad, of course. Obviously. The point is you don’t have to do that on the first day. When you want to know the general pattern of addition and multiplication, rotation in 3D space around an axis, you call it a group. That’s what it is. The point is you don’t have to talk about that super early on.

#### Obvious Names

I have one last note on communication, which is about obvious names. I really like obvious names. I was at Microsoft briefly and everything had a three letter abbreviation. There was joke that everything was a TLA, a three letter abbreviation. They had abbreviated the… In Elm, we try to just be very literal.

![](/assets/images/posts/1/055.png)

The tool for building things is `elm-make`. The tool for packaging things is `elm-package`. The tool for HTML is `elm-html`. Can anybody guess what `elm-markdown` does? It helps you do markdown. Just making it so there’s no extra steps you have to take is a really important goal for me.

### Culture

![](/assets/images/posts/1/056.png)

#### Elm Meetup in San Francisco

Next is culture. This one was a cool realization that I had … I was running a meetup in San Francisco and the setup was someone would do a talk, a couple of people would show up. Maybe like 20, 25 people would show up. Generally, it was a pretty elite group of people, people who had PhDs about some sort of functional programming topic. Essentially, when you do like there’s a person talking and a bunch of people listening, you get a group of people who are relatively elite and you try to make them more elite.

I met this person who was running a meetup called Dames Making Games. The way it was set up was a hackathon. People would show up, they’d pair program together. They’d work on a concrete project. So they’d say, “Today’s focus is a side scrolling game. Let’s focus on that.” I started trying that out for the Elm meetup in San Francisco and the makeup of the attendees changed dramatically. It was people who were totally new to Elm. It was people who were interested in using it at work. It was people who were making packages to do front-end work. Just by changing the focus of the meetup, you changed the makeup of the community. Essentially, by doing that, I’m sending a message to people who are interested in using Elm that Elm is interested in being used as well. I think that was actually a really interesting technique.

#### NoRedInk

Another example of this culture of just getting out there and making stuff is there is a company called NoRedInk in San Francisco. They recently started using Elm in production. Essentially, the way they got started was an engineer decided, “I’m going to do this,” and he did it. A lot of times, you get blocked on smaller issues, but it’s important to sort of see like, if you decide to do it, it’s not that difficult.

#### Time-Travelling Debugger

Another one is the Time-Travelling Debugger. A lot of people think I made this, which I didn’t. If you haven’t seen it before… Dun, dun, dun…

![](/assets/images/posts/1/074.gif)

You’ve got a little Mario [here](http://debug.elm-lang.org/edit/Mario.elm) and he can hop around. The interesting thing is that you can pause and go back in time. Then you can change your program and different things happen. You can also track what’s going on. This was a guy named Laszlo Pandy who was just interested in debugging, “How can we do this in a really cool way?” He decided to like go and give it a try. When I first saw the demo, I didn’t really understand what he had been talking about and then he showed me the thing and I was like, “Oh, okay, this is a big deal. This is cool.” This culture of just go out there and make something useful I think has been really valuable in that way.

#### Style Guide

One final piece is a [style guide](http://elm-lang.org/docs/style-guide). A lot of people say, “Those ML languages are hard to read.” What they’re saying, in fact, is, “Those people who use ML languages write code that’s hard to read.” It’s not quite the same thing. It’s not an inherent fact about an ML language. It’s… there is a coding style that isn’t super professional that’s very, very common.

As a quick example of this, we have two different ways.

![](/assets/images/posts/1/073.png)

The top is what I recommend. We took a lot of lessons from Python here, actually. You can do certain layout things. In this one, we always have two spaces between top level definitions. This is something that Python does. It lets you chunk functions in a much easier way. We also say always bring things down on a new line so that you can sort of visually see things in a nicer way.

The goal here is how can we have code that is going to last five years or ten years that when you go do a blame on some change, you’re going to actually point to something real. In a lot of code that I’ve seen on the Internet in some languages looks more like this. It’s much more compact. It’s much easier to fit on a slide for a presentation, and it’s easier to fit in the two columns of an academic paper, but it has problems. If I ever need to add another case that’s longer, do I move all of these? Do I leave them? If this case becomes really long, I have to move it down, but do I move all of them down?

I’m creating a maintenance problem for myself that didn’t need to exist. Part of what I want to make of value to Elm is we’re writing code for real use in the world so we need to have a professional style.

#### Package Guide

The last point is I have a guide for designing packages, which is a set of best practices. Essentially, how can we help people make really great stuff?

### Usage-driven Design

![](/assets/images/posts/1/057.png)

Finally, we’ll get to a more technical aspect of this. Usage-driven design, what that means to me is start with the minimum viable solution, something that will work and maybe it’s not enough, but maybe it will be. We don’t know. From there, see if there are any concrete issues in practice. If so, bring that information back in and either update your solution, make it a little bit more powerful.

![](/assets/images/posts/1/058.png)

What’s been interesting is that the minimal viable solution is often enough. We have a couple examples of this where we’ve gotten very nice results from keeping things simple.

#### Static Signals

![](/assets/images/posts/1/059.png)

One example of this is static signals. If you’re not super familiar with Elm, I don’t know if this will make a ton of sense, but essentially, values flow through your program in a particular way. In Elm, you can’t reconfigure that flow. Folks who have been working on FRP were very, very skeptical. They were like, “How can you make an interactive list, a dynamic list, where there are stateful elements. How could you make a list of counters where you can add and remove counters?”

Something like this. This is also in the time-traveling debugger, so you can go back. So, how can we do something like that? I essentially made the wager of, “We could add something complicated, or we could see if this actually can be solved with the minimal solution.”

![](/assets/images/posts/1/060.png)

What ended up happening is this turned into The Elm Architecture. There’s a nice pattern that you can use to structure your Elm programs that gives you modularity, gives you testability. It’s very easy to stamp out. We’re starting to see it being ported over to ClojureScript and React code. Perhaps sometimes that’s co-invention, sometimes it’s people saying, “Hey, I saw this cool thing, let’s do it here,” but what that means is we’re able to start with a very simple step.

```elm
module Counter (Model, init, Action, update, view) where

import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)


-- MODEL

type alias Model = Int


init : Int -> Model
init count = count


-- UPDATE

type Action = Increment | Decrement


update : Action -> Model -> Model
update action model = 
  case action of
    Increment -> model + 1
    Decrement -> model - 1


-- VIEW

view : Signal.Address Action -> Model -> Html
view address model =
  div []
    [ button [ onClick address Decrement ] [ text "-" ]
    , div [ countStyle ] [ text (toString model) ]
    , button [ onClick address Increment ] [ text "+" ]
    ]

  ⋮
```

This is similar to the counter that I was showing before. I have a model which is an integer. I have a way to increment it and decrement it, and I have a way to view it. I’ve wrapped this up in a module so I can reuse it as many times as I want. When I create a list of counters, I just import Counter and then I use those functions. I can initialize it. I can update it. I can view it.

All of this is just reusing that code that I wrote before. Now when I add features to counter, this code doesn’t need to know what’s happening there. I just have a way to update it and view it. You get this very nice modularity and I don’t think we would have ended up with that solution had we started with what was the more complex thing that sort of was the generally agreed upon way of doing things.

#### No Type-Classes

![](/assets/images/posts/1/061.png)

Another example of this that… I already regret putting this in here. At this moment, Elm doesn’t have type classes. This is something that’s controversial for some people. For JavaScript programmers, this is a feature. People love this. For Haskell programmers, this is a travesty. This is terrible. I can’t believe it. How’s it even possible? Part of this is that a language exists over 20 or 30 years and when you release a feature is also part of the feature. If you add a feature in in the first year, the whole culture that grows around it is going to use that. If you add it in the 15th year, that whole community that you’ve built, will have a way of doing things, and you introduced an advanced feature for advanced users. You can totally change the usage and practice by thinking about timing.

![](/assets/images/posts/1/062.png)

One interesting result that’s come from this so far is how we do our JSON parsing. This was something that we weren’t really sure how it was going to look. [This](https://github.com/elm-lang/package.elm-lang.org/blob/4cc2102ef6ff2a583da9badc5785c2365ee5878a/frontend/Component/Documentation.elm#L31-L49) is how we represent our documentation on the documentation website. Documentation has name, comment, and then all the values and such.

```elm
⋮

-- MODEL

type alias Documentation =
    { name : String
    , comment : String
    , aliases : List Alias
    , unions : List Union
    , values : List Value
    }


documentation : Decoder Documentation
documentation =
  object5 Documentation
    ("name" := string)
    ("comment" := string)
    ("aliases" := list alias)
    ("types" := list union)
    ("values" := list value)

⋮
```

The way we get that on JSON is with this decoder. There’s a name field, it has a string. There’s a comment field, it has a string. There’s a bunch of values, and that’s a list of… Let’s actually look at… There’s aliases and that’s a list of alias. Let’s look at what alias is. That’s also a decoder and it has certain fields, they have certain values.

```elm
⋮

type alias Alias =
    { name : String
    , comment : String
    , args : List String
    , tipe : Type
    }


alias : Decoder Alias
alias =
  object4 Alias
    ("name" := string)
    ("comment" := string)
    ("args" := list string)
    ("type" := string)

⋮
```

You’re able to sort of build up these JSON decoders in a really nice, explicit way, and that’s not tied to any particular type. I can make five of these for documents. Maybe they’re different eras of documents, like I changed the format at some point and I need to have a decoder for both of those. It makes that really simple.

You might say, “I’d rather not write this code.” That doesn’t actually need type classes. This is something you could perhaps generate based on the type declaration. You find yourself in a situation where you actually end up with a pretty simple solution that you wouldn’t have seen if you had a fancier tool in your toolkit.

![](/assets/images/posts/1/063.png)

The overall observation here is that a simpler foundation provides simpler code in practice. That, I think, is a really valuable thing. If you’re going to give away simplicity, you better be doing it for a very good reason. That doesn’t mean that you can’t, but you should at least know what the trade off is that you’re making.

### Tooling

![](/assets/images/posts/1/064.png)

The final thing is tooling. Because we have all these invariants about typed functional language. Elm, for example, is immutable. We have managed effects. Effects aren’t just happening arbitrarily. We can use that to create unique and delightful experiences, stuff that couldn’t be created by some other project. Elm is competing with languages like Dart or TypeScript where they have a team of twenty or fifty people, and I can’t compete… Even if someone’s 10x, that’s 20 and 50x. No one even talks about that. The way that you can be competitive is to design things that just can’t be done in those languages at all.

#### Time-Travelling Debugger

One example is that the time-travel debugger which we saw.

#### Automatic Semantic Versioning Enforcement

Another example is automatic semantic versioning enforcement. This is something that I don’t know if a lot of people know about. Let’s say a new version of elm-html comes out and it’s a major change. You want to know what happened. We can run diff and it’ll say, “Hey, these two things were added and we changed colspan to take an int and rowspan to take an int.” What happened here is someone read the spec more carefully than me and realized that in those particular cases, you can’t give four pixels or 4%, you really have to give a number.

```sh
$ elm-package diff evancz/elm-html 1.0.0 2.0.0
Comparing evancz/elm-html 1.0.0 to 2.0.0...
This is a MAJOR change.

------ Changes to module Html.Attributes - MAJOR ------

    Added:
        attribute : String -> String -> Attribute
        classList : List (String, Bool) -> Attribute
        minlength : Int -> Attribute

    Changed:
      - colspan : String -> Attribute
      + colspan : Int -> Attribute

      - rowspan : String -> Attribute
      + rowspan : Int -> Attribute

```

You can actually look, what exactly changed. This can be produced at any point. When someone’s going to release a package, we run this and say, “Hey, it looks like you added or moved such and such,” and we can say exactly, “This is a major change. This is a minor change. This is patch change.” That means every package that is released follows these rules. Maybe that’s feasible in some languages, but if we’re competing with JavaScript, this is a really nice thing.

There are a lot of fairly well known cases in JavaScript where a big project will be do a patch release or a minor release that breaks a lot of stuff and they say, “It wasn’t really that big a deal so I didn’t…” You violated everyone’s constraints and their builds are broken and they can’t push to production. This rules that kind of case out.

#### Friendly Error Messages

Another thing that we did recently is friendly error messages. Sometimes people will say, “I don’t like using these typed languages. Those error messages are a pain.” The realization here is like, maybe they are painful. Maybe we can make them better in certain ways. The way this ended up looking is we tried to think about what would help the user the most.

![](/assets/images/posts/1/065.png)

On the left, we have a little code snippet. On the right, we have the error that is happening there. We get the little red underline, “List doesn’t expose nap”, maybe one of these other things. It’s very explicit about what’s going wrong there.

![](/assets/images/posts/1/066.png)

Another example of this is… this one is great, “The first argument to the function has an unexpected type. It looks like the record is missing the field ‘age’.” If you look at the program, we’re giving Herman to isOver50 and trying to get his age, but he doesn’t have an age. We’ve directly identified in a way that a person can read what’s going on in that program. Essentially, by focusing on the user experience of these error messages, we can get a better result.

![](/assets/images/posts/1/067.png)

The hope here is… this is a work in progress and the hope is that we can get to a point where these error messages actually start to feel good. We can get to a point where it’s just helpful. I am writing a program and it says, “Hey, check out this line. This particular thing is going wrong here.” I think it’s conceivable to change the relationship people have with the compiler from adversary to assistant.

Instead of the relationship being like, “Hey, check out this code,” … “No.” … “What if I messed with this?” … “No.” … “How about this other thing?” … “No.” … “Okay, this?” … “Yep.” … Then maybe it crashes anyway if you’re using Java and you have null pointer exception… to something like, “Hey, here’s program. You should change this and avoid a crash that way.” I think that’s a long term process, but I think we should think about trying to move in that direction.

#### Online Editor + Installers

Another thing is the startup experience of using Elm. I want people to accidentally learn Elm if they come to the website. I have all of these examples and the hope is that you can click on one and say, “I’m interested in that,” and just see how that code is working directly. One nice thing here is that we have little hints so you can go read about what’s going on there. If you want to know what a div is, you can go look at that. I think that will start to turn into more advanced editors and IDEs and such, but having that experience really helps people get started in a quick way.

[Examples’ page](http://elm-lang.org/examples):

![](/assets/images/posts/1/068.png)

[Password example](http://elm-lang.org/examples/password):

![](/assets/images/posts/1/069.png)

#### Faster than JavaScript?

This one will be interesting. Based on the design of Elm, we can be faster than JavaScript, from a theoretical foundation. This is a really huge engineering project, but this is something that if we’re able to achieve, this is a huge benefit. One thing JavaScript programmers really love is performance. When asm.js came out, people were like, “When are you going to be compiling to that.” It’s like, “You need a garbage collector.” When Web Assembly comes out, “Okay, this, how about, can you use that?” … “You need a garbage collector.” I suspect we’ll eventually have one and we’ll able to actually deliver on that, but the message here is that invariants are Elm’s competitive advantage.

![](/assets/images/posts/1/070.png)

### Concluding Remarks

![](/assets/images/posts/1/071.png)

**If we can provide an experience that you can’t get anywhere else, that people haven’t seen before, that are delightful for people, then I think we have a much better chance of being the next chunk of programming history.** So that’s the outline of user-focused design in Elm. Hopefully, that’s going to help us be mainstream. Thanks.

![](/assets/images/posts/1/072.png)

### Question and Answer Session

Any questions?

*Something that people really like about using JavaScript for building their client applications is that they can use JavaScript on the client and the server and then get these server-side rendered applications using the same logic. Is having Elm run on the server a thing that…*

I think it’s likely to happen in the next release. Essentially, I wanted to focus on a clear niche before expanding out too far. I felt like if you have a really broad focus, you’re going to do a lot of things poorly. We’re at a point now where I think we can start running on Node. The long term hope would be that just be compiling to assembly and running much, much faster that and having better support for concurrency and parallelism and such. That’s coming.

*There are different theories about what programming language adoption follows. Some people think that it’s based on killer apps, some people think it’s based on features. What if it is really entirely random? I would say that, observationally, it does seem to be kind of random.*

If that’s the case, it’s not going to hurt to operate under a different theory, right? Trying real hard to think through what it might be, and if it does end up being random, this won’t hurt. Another part of this is that they’re sort of different trajectories for languages that have been successful.

You have this sort of big like languages from corporations. For a long time, that was the only way you would have the resources to make a language like C and Java and such. You also have languages that got started out of like some person working on it. Ruby and Python are examples of that, Scala and Clojure as well. I try to look at those to see what techniques might have been influential in making that happen. Maybe it’s random, in which case, that’s… Yeah.

*How do, of all of the guidelines you’ve described, whether you make these choices, introduce a new concept or try to reuse the existent concepts and so on, whether it’s helpful or say, gradual learning. Does this work in only in San Francisco or would it work also in the communities elsewhere? How do you know whether the choice you made was the right one?*

I feel like San Francisco is a much more… it’s a tougher city for typed functional programming. I think it’s true. On the East Coast, you have a lot of it and part of that is because of the universities, what the professor’s particular loyalties are too. On the East Coast of the United States, you get a lot of typed functional stuff. In Europe, you get a lot. On the West Coast, not really as much.

I try to just ask people very aggressively how things are going and what their background is and such. It’s hard to… I would be surprised if there was an advantage in San Francisco. That’s a place where… The thought experiment about having six different pitches? In San Francisco it’s like you have 80 different pitches and they all have a meetup tonight and you have to and you’re just like, I don’t know, San Francisco is tough.

*When’s Elm going to have macros? Just kidding. Do you have any data on the, or some examples of the, complexity of applications that are being built in Elm right now? What’s the largest one like?*

That’s probably the folks at NoRedInk. The particular part that they did in Elm… it’s helping people learn grammar. The example that they show is they’re helping people learn passive voice and active voice. Apparently people answered 2.5 million questions a day on that chunk of code. I don’t know how huge that code base is, but it’s not like we’ve got JavaScript scale tens of thousands, hundreds of thousands of lines projects yet.

*A lot of the things that you’ve mentioned seemed to make a lot of sense, especially in the context of Elm, but they also, the trade offs with a lot of the decisions that you’ve made that, as I’ve said, make sense in the context of Elm, but you also seem to suggesting to the general functioning community. I’m wondering whether… some of those instances I think we really should learn, but I’m wondering whether it isn’t… for instance, losing the connection in our terminology with academia. It seems like a trade off. Or not having type classes. I’m wondering whether instead of making those trade offs, we can’t just have you be the sort of Elm be the gateway drug and so you do all those things and then they go try out all the other functional programming languages afterwards…*

I think that’s plausible. The point I want to make here isn’t that all ML family languages need to be making these decisions, but starting from who is our user exactly? How can I cater to them in particular? How can I set up my messaging so people know what they’re getting themselves into? My experience has been in some communities, there’s disagreement about is this a research tool, is this a way to make product, is this… that can be quite confusing.

The answer may be the actual user of that language is defined in a different way and for that user, you need to think about different things. I wouldn’t say do all this stuff in Haskell, I don’t think that’s a good idea. Does that kind of…?

*What is the production usage of Elm right now? Are there any real world large applications built with it?*

We have, I know of, three companies definitely that are using. One is this company in San Francisco. One is called Circuit Hub and they’re doing some diagram rendering with it. There’s a German company who’s using it for some internal tools. We haven’t gotten a massive app written in it yet in production.

*You’re working at Prezi, they’re not using Elm in production? Are they going to?*

They are going to. It’s a more complicated story than maybe I want to share. Essentially, we’re in the process of doing a rewrite from Flash to JavaScript. When you’re doing a big rewrite, lots of things are complicated besides the languages involved. There’s lots of factors there. I think it’s going to be some more months, but I think it’s going to happen.

Any other questions?

Phil has a question. It’s an honor. [Philip Wadler?]

*One of the big factors in language adoption and learning is familiarity. It’s not just… It’s easier to learn because of the context. What choices did you make in the design of Elm to make it familiar, like something else. That’s, to a large extent, why Java and JavaScript succeeded is because they looked like the thing that came before them.*

I can give one example and one counter example. One example of trying to make things look familiar is we have a concept of Tasks, which looks very Promises in JavaScript. You sort of have this one-to-one mapping of where, “Hey, you know Promises? We’ve got Tasks. The API is quite similar.” That’s filling the role of the IO monad without introducing that conceptual world.

And example where I think we’re… I don’t really know what the answer is. I went with syntax highly inspired by Haskell and OCaml. For a lot of people, they’re like, “This is crazy.” It’s not clear to me what the right solution is there. If I look five years down, it’s the right choice how it is. If I look at today, maybe there’s some benefit to making things a little bit more familiar looking.

I’ll share an interesting experience on that. I’ve had people come up to me after talks and say, “Hey, that syntax looks a lot like Python, was that an influence?” And I was like, “No, but I’m so happy that you think that.” I think the style guide that we’ve set up for Elm is going to help a lot with the perception of craziness. For people that are coming from stuff like CoffeeScript it’s not that wild in terms of syntax. I’m making a bet that we can get away with certain things, especially if the overall message is, **it’s really important to make things easy to learn**.

<hr>

—*Wednesday 16th March 2016*.
