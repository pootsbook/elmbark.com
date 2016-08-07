---
layout: post
title: Web Platform Podcast about Elm
subtitle: 'Guest: Richard Feldman'
---
*Welcome to the Web Platform Podcast, a developer discussion that dives deep into all things web. We discuss topics relevant in developing the modern web and the web platform of today, tomorrow and beyond.*

*All right, hello everyone and welcome to another edition of The Web Platform Podcast Episode 76, The Elm Programming Language. I am your host today, Justin Ribeiro, Danny and Eric are out. Today with me I have Richard. Richard, how’s it going today?*

Going well.

*Please introduce yourself, tell us a little bit about yourself, how did you get wrangled in to the wonderful world of web and programming things?*

I started out when I was 9 programming BASIC, so the way I got into the web was many years later, there was no web back then. I got into it basically because I wanted to start a company and the company was going to be around that idea that ran on the web and so I figured I’d have to learn it, so I did. Fell in love with it and have been building for the web ever since.

*Wonderful, the web is a nice place to go. I actually started in BASIC as well when I was 7. My mom taught me how to make a waving flag. I always find it interesting when people start out and you work on the Elm programming language, so tell us a little bit about Elm.*

Elm is a functional programming language that compiles to JavaScript. I came across it a number of years ago when I was building this writing app and I wanted it to work offline so I could use it on an airplane, bring it up and use offline with App Cache because there actually wasn’t ServiceWorker back then, IndexedDB and the whole 9 with all that.

Eventually I’d been getting more and more into the functional programming idea just writing my JavaScript and CoffeeScript in a more functional style. I decided I wanted to try a proper design from the ground up to be functional programming language and see what that was like. For a number of reasons I ended up choosing Elm and I absolutely loved it, it was fantastic. It took me back to when I was like 10 years old and doing Visual Basic being like I can make you eyes, this is so exciting. It was really fun. It’s some of the most fun I’ve ever had programming and so I got more and more into it and now we’re using it at work and it’s been great.

*You mentioned functional programming, functional programming’s a paradigm that’s been around for a long time and it’s had a recent resurgence. What makes Elm great for making it the best functional language to get to JavaScript today?*

Yeah so there are a few different options now. Like 5 years ago pretty much all you had was use the fact that CoffeeScript has everything being an expression to write more functions but that was about it. Now you got a couple different options so you have Elm, you have PureScript, you have ClojureScript and then there’s some others that are less popular. Those are the big three I would say and the thing from my perspective that makes Elm the, my preferred choice of the three is two things, one, is that it has type-in prints, so it’s had really great compiler that catches almost all of your errors up front.

We’ve been using it in production at work for 6 months and we have yet to see a single runtime exception from any of our Elm code. It’s like thousands and thousands of lines of code, not just undefined is not a function we haven’t seen any. That’s because the compiler is just really great at catching that stuff so that’s one part of it. The other part of it is just it’s simplicity, there’s just a lot less to learn with Elm than there are with some of the other functional alternatives out there.

*Yeah, the only time I ever get no errors in my code is when no one’s actually using my code I feel like most of the time, so it’s always nice to see the compiler does a pretty good job.*

We have millions of users answering millions of questions everyday so we’re about as far as you can get from nobody using it.

*From zero.*

Yeah.

*More people should use my stuff internally, that’s the problem. I’m staring at co-worker to the right of me, which no one can see on this podcast but regardless, so why learn another language? A lot of folks come into … everyone starts somewhere in the language space and we all expand out in this world of languages because there are many languages these days, functional and some more functional than others but why use Elm instead of say, ES2015? Do we need transpiled down into JavaScript now with, from other things? Are there benefits to that?*

Yeah definitely. From my perspective the main thing is that it’s difficult to get the guarantees that you get from Elm that make it such a nice experience as far as maintaining code, re-factoring code and having no runtime exceptions. It’s difficult to get that, I think it’s actually impossible to get that by adding on to an existing language. Really what you have to have is you have to start from a language that doesn’t have certain things. The reason Elm’s able to do that is there is no null or undefined, the language is designed around not having that. Then you express the idea of the absence of a value in different ways that can be verified more easily.

The fact of the matter is JavaScript as this long legacy, it’s been around for a long time. It’s had several iterations and backwards compatibility is really important and so you couldn’t just go through and say we’re going to take undefined out of JavaScript, that’s impossible at this point. The advantage of going to a new language is you can have a clean slate and say this is a language that going to be designed to learn from these decades of programming language research, all the experiences people have had with other languages in the past and say how can we do this better from the ground up and that’s what Elm is.

*Yeah and Elm has some just absolutely wonderful features. I was playing with it last night a little bit, trying to make sure that I could speak somewhat to it as opposed to just randomly spouting off random words that Justin finds in documents. It is quite [inaudible 00:07:10], it strongly typed, the fact that it doesn’t have null and undefined is magical, really. If you’ve never used a language that doesn’t have them, it is, it does take you back doesn’t it? It is a different concept if you come up with JavaScript and go, well what will I do half my day if I don’t track down those null and undefined?*

Build working software, it’s great.

*Feature wise, is there a feature in Elm that people just don’t know about? Is there that one killer feature that you say, if you knew Elm did this you might take a look, like what would that feature be for you?*

The biggest one is definitely no runtime exceptions. Something that comes with that is just the re-factoring is really great. Usually when I re-factor something, even if it’s hundreds of lines of code changed, almost always the experience I have is after it compiles again it just works with no regressions, it’s really nice. We write fewer tests and still have better confidence in what we’re shipping because the compiler is really awesome.

Besides that, something that I don’t think people know about, I would say the first thing that comes to mind is Elm format. It’s relatively new, so this is the Go language has had this thing called Go format or Go Func, as they call it and essentially what it does, both of them do the same thing, which is they … you run it on your code and it just formats it, it makes it look pretty.

I use Sublime Text and the Sublime Text Elm plugin has an automatic, every time you save it runs Elm format on your code. It’s great because not only does it make your code look nice but it makes it look consistent across your whole team, so you can stop having debates over how many spaces of indentation to use and where to put new lines and things like that because it will just go through and it will just do that stuff for you, just make it look good.

Now I spend so much less time thinking about that stuff and I’ve actually started using it as a little Vim or Emax style code assistant where instead of pressing enter and then indenting, in a lot of cases I’ll just write some nasty code and the minimal amount possible, hit save and it will just make it look pretty for me.

*Stream of conscious programming, that is way to go. That’s the beauty of formatters, right?*

Yeah, it’s really great. I still do some JavaScript and CoffeeScript stuff in addition to Elm, mostly Elm but I still do some of the other stuff and I just miss it every time I’m going through, I hit save and I’m like why didn’t it, oh right, okay, I guess I’ll indent it by hand.

*In terms of that though, how does Elm fit in today’s workflows? Say you do have an existing app and you want, you’re like, oh man, I’m really tired of this particular piece of that app and I’m going to start to bring Elm into my project, how does that, how has that worked in your experience?*

The way I did it was basically just starting by building a small thing and introducing it into our project at work. Specifically what I did, we were on React and Flux and that’s what we’d been using for awhile and so I just rewrote one of our Flux stores in Elm. I actually wrote a blog post about this, it’s called, this is not in the show notes, I guess we could add it to the show notes but …

*We will add it to the show notes, it will be so.* [ [Walkthrough: Introducing Elm to a JS Web App](http://tech.noredink.com/post/126978281075/walkthrough-introducing-elm-to-a-js-web-app) ] 

Basically what I did is I just rewrote one of our stores and the blog post I go through taking the Flux to do NBC app and doing the same thing and rewriting one of, their big store in Elm. It’s interesting because Elm and JavaScript operate in different worlds and so the way that Elm maintains a lot of it’s guarantees is by making it so that the way JavaScript interop works is not by sharing code but rather by communicating to and from JavaScript, just sending data back and forth, much like you talk to a server.

I basically had to pick some sort of boundary to send that data back and forth and I thought well Flux store is a pretty natural way to do that because it’s just all about sending data to and from the rest of your application with getters and setters. I just re-implemented all the getters and setters in Elm and that was it. Then so we got that into production and said wow, we like this, let’s do more. We just expanded from there and now pretty much 95% of our whole front end team is just running Elm all day. We pretty much just write JavaScript for interoperating with Elm and if we have some legacy code to maintain.

*Yeah, I think that’s a powerful story, a lot of times when you see people come into web development everyone has their flavor of what they like to do and a lot of times that requires like, oh you know what, I don’t like your product at all, I’m in charge now, we’re destroying all of it, it goes all away at once. Which is not really a feasible approach if you want to continue to have a job and or be in business for long, so.*

*It’s always interesting to me to see … because we’ve had other folks on the podcast that take similar approaches, where I have this one small thing, it doesn’t work quite the way I want maybe I rewrite it in this or we have this new implementation it’s fairly tiny, let’s introduce this. At a lot of places that’s hard, right? You end up with pitch forks and torches and please, I don’t want your ASP, version 1 from 1997 in my code base anymore, not to say that I’m writing ASP 1 code base anymore, I mean it happens from time to time. Someone says bring it up and it’s sad but the reality being is that it can be tough, right?*

*Have you seen a lot of Elm uptick in other businesses? Because I read through quite a few blog posts where people are taking similar approaches when they’re actually implementing Elm for the first time and then all the sudden it snowballs into a much larger thing to where it’s now running on Elm.*

Yeah definitely and especially the past year I’ve seen a lot of that. I think the reason for that is that Elm’s been around for about 3 years but only in the past 2 years did it have a React like story where you could have a declarative virtual DOM style renderer and I think that really was the tipping point and now it’s become this language where you can write code for the DOM in the way that people like to and have great performance and yet also have really maintainable code.

It seems like now React has spawned this idea of here’s a great way to do functional programming in the browser, it’s a great way to write declarative views and people love it. The only downside is that it’s difficult to maintain and that’s why you’re seeing flow and things like that showing up. Compared to Elm where flow and so forth are basically putting band aids over the historical design of JavaScript but the reality is, it wasn’t designed to be a reliable, maintainable language for large projects. It was designed to be a tiny scripting language and expecting it to be this thing that it has become is really a tough sell.

*It’s been amazing, it’s a bit amazing that it become the thing that it became … but yeah, it is, there is quite a bit of … to that, a lot of people, it’s easy to start a project right? We all, GreenField is a wonderful thing because you don’t necessarily, you’re not encumbered by designs of the past but the problem is that eventually Greenfield does become that past story and then maintenance becomes a big part of that.*

*When the maintenance story is not very clear it strikes me that things like Elm and other tooling and or languages and approaches seem to fill that niche. Where it becomes easier to maintain. Do you find that programmers who have worked in JavaScript primarily who come on to Elm to see how that maintenance works, do you feel like they take fairly readily to it?*

Yeah I think as long as you come into it with an open mind being willing to learn because the fact of the matter is if you want something to be significantly better than the status quo that implies that it’s going to be significantly different from the status quo. You can’t just show up to Elm and think well, it’s going to be just like JavaScript only better because in reality what it is, is it’s just different from JavaScript and there a lot of pros there but there also some drawbacks.

Some things are going to get harder, there’s going to be some learning curve in some areas and that’s the price of admission to getting all the benefits. I’ve been fortunate I have a lot of coworkers who are open minded and willing to give new things a try and especially in the JavaScript world where there’s a lot of fatigue around all of the different frameworks and all of the different options out there.

*I feel like fatigue is a very kind word for that syndrome. I didn’t mean to cut you off, continue.*

Yeah, yeah, frustration, there’s a lot there. That’s why I’m asking people to try something significantly different when there are so many different things out there. It’s a difficult proposition in this day and age. Like I said, fortunately I have coworkers who are willing to give it a shot and actually the most extreme example of this is my coworker Tessa, she was just coming off of coding boot camp, she’d never done programming, she likes Mathematica in college and that was it. Then she learned JavaScript in a few months and then on her first week on the job, this being her first professional programming job, by the end of it she was writing Elm for production and that’s not a typical story but there’s not reason it couldn’t be.

*Yeah and I think people are more adept at expanding their language knowledge these days. There are just so many choices in the field, depending on where you particularly work, whether it’s backend or front end or somewhere in between, where all sudden, I know that we’ve taken JavaScript and put it in some absolutely crazy places and I think that’s a very intriguing story because some places I’m not sure that’s necessarily where it should be but there is it.*

*I’m always curious to see what people’s learning process is around new languages because some … When I was coming up because I’m old and ancient these days, you didn’t really do that so much. You had one core thing that you did and that was the language that you knew. These days you really do have to have quite a few quivers or quite a few arrows in your quiver in the language of things. Not just for the web but for platforms in general.*

Yeah, I agree with that, I think there are more and more polyglot programmers out there. I look back at the last decade or so of my career and I can think of, off the top of my head, at least a half dozen languages I’ve used. Several of them sometimes in one given job I’d be using 3 or 4 different languages. That seems to be the way of things now.

*Yeah, so it is nice to see that if you took a junior dev like that and said good news, you just learned JavaScript, that’s great but here’s a new language you have to learn. I think that’s a very interesting story because a lot of people won’t do that. They will not jump into that thing and if you can get up to speed that quick, that’s a compelling story. It makes it easy to say hey, maybe we should try this, where it doesn’t take you … now your level of mastery may be different in a year as opposed to the first month but at the end of the day it’s accessible. There’s a lot of documentation on the site these days, right?*

Yeah.

*Versions are seriously rolling out now.*

Yeah, so there’s a lot of documentation around the language itself, there are an increasing number of blog posts and things like that. There’s a great community called Elm-discuss, it’s a mailing list, a Google Group, there’s an Elm Slack channel, and yeah, the community’s just getting bigger and bigger. It feels like every couple weeks now I see somebody posting that they started a new Elm community in some new city. I think Chicago is about to have their first meetup. Seattle had theirs recently, Utah, there’s just like showing up all over the place, it’s pretty cool.

*Is building language communities like this hard? Like I haven’t, I’ve never done it to be honest. I run community events and languages, you can get, there can be a lot of arguments around languages…*

Yeah.

*That grow out of what people have learned in the past, what is good per se, with air quotes around it. Have you found that to be fairly spontaneous, are these things popping up out of nowhere? It seems to me that once communities start to pop up that means that there are projects around that weren’t there before.*

Yeah I think that’s exactly what it is. We have these online communities and I think generally what will happen is that someone will start picking up Elm in some particular city and they’ll start getting excited about it, they’ll start building things with it and then they’ll start talking about it to their friends.

I think I inadvertently seeded the St. Louis Elm community because I was at a wedding with a few of my friends and I was sitting at the table and of course we were discussing, what you are up to lately. I started saying well, I’ve gotten really into this language called Elm and she said oh, what’s Elm, let’s talk about it. This is Jessica Kerr, jessitron on Twitter. We were chatting and she started taking notes and then she went back and starting playing around with it and she’s like, this is really great. Now there’s a St. Louis Elm meetup, she’s coauthoring a book on Elm and it’s just like these things just snowballed, just from people finding out about it and trying it out and getting excited about it.

*Yeah and I love to hear stories like that because it’s the little seeds that grow into major shifts or major sort of, oh, wow I can do my job significantly faster and better and I can drink more coffee. Actually I’m probably the only one who thinks that. No, but with every high side of all the good things, there’s always a down side, there must be some down side amongst Elm as opposed to things like JavaScript or other things on the web platform. Are there any pratfalls that people should look for?*

Yeah definitely, so I would say that the 2 biggest drawbacks to Elm are, I’ll name 3 actually, so the 3 biggest drawbacks are one, that it’s a very new language, and so there comes with that the size of the community is not as big as the JavaScript community. You don’t have nearly as many libraries as you do and like PMs as you do on the Elm package manager although I will note, maybe I should have answered this is the feature that people don’t know about, the Elm package manager enforces semantic versioning, so if you try to publish … so every single package, if you try to publish a breaking change and you don’t increment the major version number it will reject it automatically. It won’t let you publish it.

*That’s a nice feature.*

Yeah, yeah, it’s really nice, it makes everything very reliable but by the same token there are not nearly as many libraries on there as there are on npm. On average the quality’s much higher but it’s much smaller, so fortunately there is JavaScript interopt so you can fall back on npm if you need to access something from there but of course the stuff you access through npm is not going to have all the nice guarantees as the stuff you get through the package manager. That’s the first downside is just that it’s smaller, it’s less mature, the ecosystem is not as large.

Second downside is learning curve, if you’re coming to it from JavaScript, there’s just stuff you have to learn to get productive in it. More so than CoffeeScript or TypeScript which are both preserving JavaScript semantics and just changing certain things. Elm is built from the ground up to be different, so there’s significantly more to learn there.

Then the third drawback I would say is just that by nature of Elm’s design, it’s designed to solve the problem of maintainability and reliability, so it’s not as good for prototyping. The observation we’ve had is like if we’ve got a feature that we’re shipping over the course of a month, comparing what it will take to do that feature in JavaScript versus what it will take to do in Elm, the experience we’ve had is it’ll be a lot faster to get something up on the screen, something up and running that we can look at and play with in JavaScript, it’s definitely faster to do that, to get from zero to something that we can show.

Over the course of that whole month the cost of getting it all the way to something we can ship in production, that we’re going to be maintaining for months and years to come is significantly lower in Elm. By the time it gets to our users, Elm has saved us time but that first little bit to get it up and get a project that we can try out and do user testing and stuff is still faster than JavaScript.

The downside is that there’s a little bit more up front that you have to do just to get things up and running. Really, the reason for that is because Elm is both very good at detecting edge cases and telling you about them but also it requires you to deal with them. In JavaScript the thing that makes it less reliable which is that you can just ignore a lot of edge cases and then they come back to bite you later.

*Yeah I was going to say, like the thing about edge cases.*

Right, but being able to ignore them does let you get a prototype out faster, being able to say I’m not going to deal with this right now. In Elm you have to be more explicit and say this thing is here but I’m going to explicitly choose not to deal with it or hack around it or something like that. Elm makes it a lot harder to just ignore those things, which means it takes longer to get prototypes out.

*Yeah, prototyping these days is, it makes me furl my brow sometimes when you look at the platform in general because there is this growing … the web platform is too complicated, I need to clone half of npm to make my project build or I need to … why can’t I just drop this in and things work? Is the web platform for even just any prototyping at this point getting too complicated or are we simply making it too complicated?*

I think honestly I prefer to go … I like to have 2 extremes, I like to have my nice setup for production that maybe takes longer to get setup so I got Webpack, we’ve got Elm, we got all these modern conveniences. Then I’ve got my prototyping setup, which is just jQuery, like that’s it. I’m like this is something I’m going to hack together, I am knowing from day zero I’m going to throw this away, I’m going to throw it in the incinerator as soon as I get the design that I want.

I’m just hacking this together so that I can try it out with a user. Having those 2 extremes means that number one I don’t feel bad at all about writing horribly hacky, copy pasted code for my prototype. It’s a very simple, minimal setup, just include jQuery on the paste, throw a CD in and then go. I don’t even do a CSSP process or anything because again, I’m not going to maintain this. This is just for trying shit out. Then once I get the design I like then I throw it out and start writing with Webpack, Elm, SAS, stuff like that and it’s nice. It takes longer but it’s … and it’s something that’s totally maintainable.

*Yeah and I want to stress the maintainability of it, because I think people … the kicker is sometimes our prototypes become the thing that we have to maintain. In that scenario you do have to be careful or at least with certain types of clientele that are like oh, looks good enough for me, I think we should use this right now.*

Right.

*Ignore the fact that it’s not wired to anything.*

Right.

*Except itself for the most part but the maintainability is huge these days. If you’re not thinking about maintainability you should be thinking about maintainability, please do if you’re out there and thinking to yourself I don’t need to worry about edge cases.*

The thing about that is that if you don’t you end up having to worry about it after the fact, right? I mean 6 months from when you started, that’s when the chickens come home to roost whether you like it or not.

*Yeah, exactly and then you’re up at 3 o’clock in the morning going I don’t … whose idea was this and then you’re looking at the commits going oh, that was my horrible idea. I made poor choices that day because every choice looks poor at 3:00 AM.*

Yeah, truth.

*What should people know about … we talked a little bit about the language, we know that there is some learning curve, that it’s not, obviously it’s not a one-to-one with JavaScript. Are there things that people should know just coming in? Like if I was someone who was relatively new to a language or 2, what were some things about Elm that I should probably know that I may not know going in straight away?*

Sure, so here are 3 things that definitely take some getting used to, one is that everything is immutable, there are no mutations anywhere. You can’t mutate stuff so like strings are immutable in JavaScript, you make one and then if you want to “change” it you make a new one. Everything is like that in Elm, arrays, lists, whatever, all data structures, they use persistent data structures under the hood which is how they’re able to get really nice benchmarks and but yeah, so every time you want to make a new thing, you’re “copying” an old one although in practice it’s not actually going to copy the whole thing. Yeah, everything is immutable.

Second thing is that everything is effectively const, you don’t reassign things either. You can mutate and you don’t reassign it’s just passing values from one thing to another. Everything’s an expression so it’s pretty easy to do that. Then the third thing is that there are no side effects anywhere. Whenever you want to do some sort of effect like Ajax or something like that, Elm uses what’s called managed effects, which is essentially … so in JavaScript you might return a promise and in Elm instead of promise they have this thing called task and a task is just a value that describes what you want done. The task might say I want to have an Ajax request happen that does this or that and then afterwards I want to do some other stuff so you can chain these tasks together and so forth.

The relevant part is that tasks are like callbacks in that when you instantiate them they don’t do anything right away. When you instantiate a task it’s just a description of what you want done. You can instantiate a hundred of them it’s not going to do a single Ajax request so your whole program because of these 3 things put together becomes a series of data transformations, you’re just instantiating values and then passing them around. At the end of the day you hand them off to the Elm runtime and then it translates all of that into an imperative JavaScript program that’s going to actually run commands one at a time.

It definitely gets, takes some getting used to being like every single function I have is full of immutable stuff, not reassigning anything, I’m not making any side effects happen but then once I wire it all together then it turns into a running program that works.

*I think that’s an important difference too, right? In terms of, it’s a very functional programming paradigm right? It’s functional program…*

Yeah.

*People often forget about side effects, like even when they’re writing other languages where they’re writing in a functional paradigm and then they’re going, I don’t understand why this is this way? It’s because you have a side effect in there. It’s … no, don’t do that. That’s the whole thing, right? It can be tough when the language doesn’t necessarily form to fit that paradigm.*

Yeah and it’s interesting you see things like in React you’ll see it says, like hey, don’t do side effects in your render function. You can but please don’t because it might break things. In Redux you’ll see in the docs that it says when you’re writing your reducers, don’t use side effects here, you can but please don’t.

Whereas in Elm it’s actually basically enforced that you don’t. You never have side effects and if you’re wondering whether or not a particular function might do Ajax, all you have to do is look at what it returns. If it returns a task that, yeah, that task might do some Ajax but if it doesn’t return a task, if it just returns a string or if it just returns an integer or if it just returns some html, you know that that function is not doing anything to do with Ajax.

It’s not doing anything with local storage, it’s not doing any effects whatsoever because it’s just right there in the return type. It’s either a task or it’s not, so when you have your render functions in Elm you know that they don’t have side effects because they don’t return tasks when you look at your stores, the equivalent of your stores or your reducers in Elm, you know that they don’t return a task so you don’t have to worry about that.

*Yeah and I think that’s a very powerful feature actually because I think that 50% of what [inaudible 00:35:13] these days is worrying about what’s going to happen when you’ve bundled in so many things together to try to do something that you do end up with something that is unexpected. That’s tough because then you go on the great trail of bug hunting that is, why did I do this, whose fault is this?*

Right.

*Is it our fault? The normal sorts of things and I think Elm plays very strongly to that. I like the idea of tasks and not having to worry about side effects because you’re inherently, your design to not write that sort of code that would frankly come back and bite you later. Again, that 3:00 AM phone call where you’re going man, I made horrible, horrible decisions last month. What was wrong? Did I fail to eat the candy bar of choice that day? What was wrong?*

Another nice thing about tasks is that, so in JavaScript you have 3 different ways to do effects and 3 different ways to handle errors. The 3 different ways to make effect, are 1, you make a synchronous function call that has a side effect, 2 is you call something and give it a call back and then 3 is you use a promise, so all 3 of those in Elm are just replaced by tasks.

There’s only one way to do it an it’s the nice way, tasks composed together like promises do, you can do the equivalent of promise.all and batch them up and have them run and say I don’t care what order these run in, just tell me when they’re all done, stuff like that. You get all the benefits of promises but all the time, like every one uses it because that’s all there is. You don’t have to deal with this library used a promise and this one used a callback and this did it synchronously. That’s all, there’s just one, it’s just task, it’s just the nice thing.

*One nice thing would be much better than 3 not so nice things, I think.*

Yeah. The other cool thing is the error handling so in JavaScripts you have exceptions and then you have calling and call back, passing an error argument and then you have promises which have their own concept of errors. Again, in Elm, there’s just error handling through tasks so it works the same way that promise error handling does except that that also takes the place of exceptions so there are … there’s no try-catch in Elm there’s just handling errors through tasks so you don’t have to worry about like oh, did my promise swallow my exception, did somebody else doing a try-catch here, like nope, it’s just, if there’s an error it’s going to be handled right there in the task in the same way that you would have or reject in a promise.

*Yeah, I think again, that’s really nice.*

Yeah.

*It does, for the learning curve to learn about Elm, it does take out some of the learning curve of learning the 27 different ways to do things in other languages.*

Yeah.

*Because it’s an old story and JavaScript some people like to tease JavaScript, I do as well and JavaScript the language is getting better, we all…*

It’s a love hate relationship for all of us.

*Yeah, it’s a love hate relationship for all of us, we… some days are better than others. All languages have these pratfalls and things that make us think twice and it’s nice when languages, and there are a lot of nice languages being designed now that deal with a lot of these problems both for the web and not for the web. What’s your worst thing, if one thing could be fixed in Elm, what would that one thing be? Because every language has got it, that just goes why, why is it this way and you shake your head and learn to deal with it and hope one day. What would that feature be for you?*

The one thing, I don’t know if this counts as a language feature or not, there’s this tool called Elm Reactor and AKA the time traveling debugger and this is the original one, like before JavaScript had time travel and things like that, like Redux you can have time travel and stuff like that. Elm inspired a lot of those because with the school demo of being able to go back in time.

The trouble is that it doesn’t currently work with the JavaScript interop, the port system, which means if you do JavaScript interop you can’t use the time traveling debugger, which is really annoying because I want to use it because it’s so cool but I can’t because of course, like I said, there’s still this big library, this JavaScript ecosystem, we don’t want to reinvent the wheel so we do JavaScript interop and so we can’t use it. I’m told that a fix is in the works but it hasn’t come out yet and then once it supports that I’ll be much happier but until then I will angrily shake my fists.

*In to that, a pre-compiled languages for the web, like general thoughts? Good thing, bad thing, why thing?*

I think there’s 2 parts to that, 1 is just compiling to JavaScript in general and then 2 is having a compiler that actually checks things. To the first part, the question of compiling things to JavaScript in general I think that’s here to stay. I think babble is, if you think about it, one way to think of Babel is oh, we want to use the JavaScript features of tomorrow today.

The thing is, if that’s something that’s going to become part of your build chain and that’s not a big deal well, what happens tomorrow, aren’t you still going to want to JavaScript features of next week? When we get to next week aren’t you still going to want the JavaScript features of the week after that? There’s always going to be more stuff coming out, this is programming, there’s no end where we say we’re done, we’ve hit the end of programming, everything’s done we don’t need to … there are no more new features.

*I could have swore there was a silver jumpsuit moment in our future. I did not get that memo. I was really hoping for one silver jumpsuit, this is what we’re doing in the programming community from now on, that’s it. I’m sorry I’m pretty sure I stole that from Jerry Seinfield, so.*

Maybe but if I were a betting man that’s not what I’d bet on. The point is, if you’re going to be using Babel today you’re going to be using Babel tomorrow, next week, next month, you’re going to be using it indefinitely. At that point if you’re already committed to having the part of your build chain where you’re compiling something to JavaScript, does the thing that you’re compiling to JavaScript need to be another dialect of JavaScript? Why not choose something else, might as well.

*Yeah, I agree with you. I think that it’s not going away. I think it is here to stay, it seems to make sense now particularly for the web platform because it does move so quickly at this point where we had a lull for awhile and I wouldn’t necessarily call it a lull I guess, it was just a standards are being defined and trees are being cut down to make bridges and well … spears to spear features into the platform so that we can all have a nicer day. Yeah, I agree with you actually, I think it’s, I don’t think it’s going to go away any particular day of the week. Some people seem to not like that idea but I don’t really know why because it doesn’t necessarily hurt if you’re not using compiling down into JavaScript from something else, you’re at no loss.*

Right.

*You can write the code that you want to write so I don’t … maintainability wise again, I don’t … I think maintainability these days is really highly underrated because so many new things come out so quickly. It is nice to know that well, this language operates only in this targeted way, not in 27 variation ways, not because you had a minor revision bump.*

*The minor revision bump ladies and gentlemen is the most annoying thing, please for the love of Pete just properly version your code so that I don’t have to file tickets going please just, I’ll patch it, I will send you the pull request. Let’s all be nice with our versioning so that we all know what exactly is going on in the web or elsewhere.*

To the point of this podcast, the web platform is the exciting thing to me. The web is the best app delivery platform the world has ever seen. You literally can’t do better than I type in the name of the thing I want to use and then I’m using it. There’s no download, there’s no installation, there’s no waiting for updates, it’s just you literally just tell the computer here’s what I want to use and the next step is you’re using it, the latest version of it, right?

We’ve never done better than that and if you think about it, that’s only one step, how do you do better than that? The computer has to read your mind to do better than that with delivery mechanism. We go to the realm of science fiction to do better than what the web already does today. When I look at that, that’s what’s exciting to me and the idea that what has to be exciting is specifically the language of JavaScript as it exists in browsers today. That’s what’s exciting about the web, I don’t think so. I think what’s exciting about the web is the way that it makes app delivery happen.

*It is magical and it’s funny because I started just before the web really took off in the mid 90s when we started having dial-up and whatnot and then the web comes in and the dot com boom hits and I remember working on IE4 just [crosstalk 00:45:25]*

Netscape Communicator, back in the day.

*Yeah those were the days, document.all ladies and gentlemen it was a thing and document.layers. People were like I don’t know what that is. I hope you never have to know what that is again on the web. Even in that environment where there were quite a few differences as the lay of the land was being set. The web continued to win, you’re right, it was this instant delivery of here is your stuff and you can use it and you’re up to date against this thing.*

*Now we’ve got things like progressive web apps with super-worker in the cards now which is awesome, love it so much. It is, regardless of the language you decide to write in these days, you get that power, right? You can compile down in JavaScript the DOM, I know some people don’t like the DOM, I think the DOM is quite performant. Justin’s opinion 101, I’ll leave shadow DOM out of this one today.*

The thing about the DOM that’s really cool is just that it’s a very rich interactive system that has been adopted widely and that is still semantically useful. If you’re just rendering to pixels you can get a ton of bleeding edge performance but if you want to come write a plugin for that you’re out of luck.

I love that fact that I can bring up any web page that I use and I can mess with it, I can add, like the extensions that let me write CSS to mess around with the pages I’m looking at, can’t do that with a native app. I love the fact that I can just search for anything on the page. I’ve had so many native apps where I’m like command F, nope. Please command F right, but on the web it just works and so just having this universal specification for here’s how to make a content rich page.

Yeah, there are lots of drawbacks of the DOM too but fundamentally having a semantic description of your UI is something that we’ve never had in programming before and it’s by far the most successful implementation of that and it’s just definitely an undervalued aspect of web development.

*Yeah, I think the debate will always rage on because otherwise what would we have to talk about? On various shows and what not.*

Don’t get me wrong, I have plenty of criticisms of API but as a construct it’s a very useful one.

*I think it’s always interesting because you start look through the API and a lot of the listeners obviously are building for the web these days and some are new to it, some have been doing it for a long time and I like the community. It’s okay to argue about how APIs work, maybe not on mailing lists because mailing lists are horrible but in other, mailing lists can be troublesome to follow what the chain of logic was. Half the time I don’t know what the original question was on most of the mailing lists these days.*

*You look at TC39 and everything, the other sorts of bodies and corporations and people who are putting a massive amount of work to bring the web platform up to date. Everybody knows I’m a huge fan of ServiceWorker, I know you mentioned App Cash at the beginning and I cringe because I’m like well we could just talk about App Cash and how much it’s horrible. I don’t think that was the point of today’s episode. It’d be another episode, App Cash the black box that continues to ruin your 2:00 AM, so you could … there is quite a bit of hope even with those sorts of bugs and things that exist today, so it is good times.*

Yeah.

*We’ve talked about a lot of stuff, Richard. What is the thing that I forgot to ask that Eric or Danny would have asked because I forget a lot of things? What is the thing I missed that I should have asked you that we should have talked about Elm?*

One of the things that people ask is that a lot of new languages crop up and then they don’t end up with long term support. You get a language creator wonders off and does something else, you get the maintainers stop having time for it and things like that. One of these questions is that, is Elm going to be around in 3 to 5 years? Previously, Evan Czaplicki is the creator of Elm and previously he’d been working at Prezi and they were paying him basically to develop the language.

Actually just last week we announced, so my company, I work for NoRedInk and we make grammar writing software for English teachers and we’re hiring by the way. We just announced last week that we hired Evan and so now we believe that we are the company making the strongest Elm investment in the world now because it’s been unbelievably great for us and it’s also been a big deal for hiring because people want to just come work here because they get to work in Elm.

We’re like, yeah, you know what, it’s time for us to give back to the open source community in a very direct financial way because we benefited a lot from it and it’s helped make us a financially successfully company so why don’t we use some of that financial success to give back. That should at least a lay some of people’s concerns about what’s the future of Elm. The future of Elm is very bright and has explicit financial support in addition to a large community effort, so.

*That’s key, yeah, it can be hard to get behind something when you don’t see that growth. I would say that Elm has shown a great deal of growth, even outside of the commercial aspect of it where people are actually supporting that language and whatever else. That’s a testament to how good it is to write in I think.*

Yeah.

*I haven’t written much in it, I just started playing with it but I love a new language, so. Got to write some things, just to see and see how it fits into the equation of daily work.*

Yeah.

*I think that’s fantastic. Wonderful, well we’re running up against time at the moment. Richard, how do people find you on the internet, if they want to bug you about Elm or just random web platform things?*

Probably the easiest way is Twitter, [@rtfeldman](https://twitter.com/rtfeldman), that will be in the show notes and I’m happy to chat about Elm, not anything else, Star Wars.

*I’m going to have to convince Eric and Danny that we need a Star Wars themed episode because there was the polymer of Star Wars bit too this year and I’m sure there’s a whole bunch of web apps that are being built around the Star Wars concept, if anybody hadn’t heard Star Wars came out in December. Just in case you’ve not been on earth…*

Highest grossing movie, if you want to look it up, have somebody to look it up.

*Yeah, it’s been great having you on the show, Richard. Thank you so very much for taking the time to be with us today.*

Yeah thanks for having me, this is fun.

*Ladies and gentlemen that has been Episode 76, The Elm Programming Language. I’m your host Justin Ribeiro and this has been The Web Platform Podcast. Thank you very much for listening.*
