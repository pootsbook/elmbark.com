---
layout: post
title: André Staltz on Elm
---

I was listening to the React Native Radio podcast this week where they had André Staltz ([@andrestaltz](https://www.twitter.com/andrestaltz)) on as a guest. André is involved with RxJS and the creator of Cycle.js, you may have come across him for his excellent [introduction to Reactive Programming](https://gist.github.com/staltz/868e7e9bc2a7b8c1f754) or his [Egghead.io course on Cycle.js Fundamentals](https://egghead.io/series/cycle-js-fundamentals).

I have seen André be complimentary about Elm on Twitter in the past but this is the first time that I heard him share his thoughts in longer form. The following is transcribed from parts of the podcast, you can always listen to the [episode in full](https://devchat.tv/react-native-radio/20-CycleJS-Cycle-Native-and-RXJS-with-Andre-Staltz) to get the context. The emphasis is my own.

*It seems like you have your hands in a whole bunch of things, is that right?*

> Well, I try to. I mean, I need to find more time for myself, but **I do really like Elm**. I wasn’t like an Elm advocate from the beginning, but after getting to know some people like Richard Feldman, and Evan, himself, Evan, the designer of Elm, **I’m really sold on Elm. It’s a really, really nice programming language**. We should start using it for a bunch of actual applications. **It does give strong benefits for real programming. You can program without worrying, that’s basically what Elm does**. It allows you to program without worrying, because in practice, our JavaScript daily work, is that you write some JavaScript, but then you go and run it and then there are run time errors.

> You go check, “What did I write wrong?” That kind of stuff. **Elm just eliminates that completely**, almost completely, I mean. Basically, **if it complies, then it’s going to run. That’s your basic experience**. I’ve been trying to find time to do a bit more of Elm. I have written very small apps with Elm, and fiddled around with Elm. When me and my friend [Ossi Hanhinen] got this idea of building Elm with React Native, it was just a hack together. I don’t really have that much time to invest in it. I kick-started it a bit, helped to make it become something, before, it was non-existent. Mainly, my hands are on Cycle.js and RxJS, but sometimes I do try to help the Elm community.

*There’s been a lot of talk about React and whether it’s functional or not. Some people say it is, some people say it isn’t, you know? There’s libraries like Immutable now, which help with that. How do you feel about that, Andre? Is React functional? If it’s not, what can we do to make it more functional? Whether it’s through our thinking process, our mental model, or actually changing the stuff that happens behind the scenes to make React fully functional.*

> Yeah, sure. I’ve been thinking a lot about the functional programming, and also React, and Virtual DOM, UIs, and libraries. The thing is, React enabled the type of functional programming which I ... Let’s call it soft functional programming, which is not really like the Haskell type of functional programming where you’re religious about all of the types, and things have to compile, and everything has to be pure. We’re not seeing that. We’re seeing soft functional programming, and also Cycle.js is pretty much functional programming ideas, but it lives in Javascript. It’s not hardcore functional programming.

> **Then, we have things like Elm, which, they are functional programming to the core.** It’s a bit more on the hardcore side of functional programming, but it’s still, we could say, in the category of soft functional programming. It’s not making it so intimidating to you, and **it’s presenting a more approachable version of functional programming.**

> I think in general, as a theme, what we’re seeing is the advent of soft functional programming. You can see that, definitely, in Cycle and in React. A lot of people have appreciated properties from React, such as immutability, and declarative UIs. All of these properties come from the fact that it has some functional programming ideas sprinkled on it. It’s not fully functional. We can’t say that, but it does have some ideas, functional programming. Mainly the main thing in React is the render function, which is declarative. Yeah, so that you don’t need to change the UI that was built. You just re-render that component. That’s like the functional programming idea, but it’s just in one part of React.

> I’d like to see how can we introduce functional programming to people in a way that is not intimidating. There’s multiple approaches. One of them is mixing functional with imperative, like React does, so it has some imperative parts. The other one is doing soft functional programming. It’s mostly functional, and that’s Cycle. **The other one is using hardcore functional programming, but approachable and easy, which is Elm**. I don’t know which of these different variants of soft functional programming will go forward, but definitely all of these properties that we’ve been talking that are so nice. React, and all of these tools, they’re really functional programming properties. I’m just excited to see how this is going to go forward, because it’s basically ... We’re giving the message that imperative, fully imperative, is not a good idea. That’s what we have discovered, at least.

André is very much located in the eye of this storm, check out [his blog](http://staltz.com/) for more of his thoughts on front-end development and the (uni-)direction we are headed in.

I believe the distinction he makes between ‘hard’ and ‘soft’ functional programming is helpful, and it’s interesting that Elm sits in between the two, being described as a soft variant because it is approachable, despite being strict. It will certainly be interesting to see how these things play out. Here’s to our functional future.

—*Thursday 10th March 2016*.
