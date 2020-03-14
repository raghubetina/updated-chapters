class MockupsController < ApplicationController
  def chapter
    chapter_content = %[
* Will be replaced with the ToC
{:toc}

# Application Development

## Welcome long Welcome long Welcome long Welcome long Welcome long

Raghu: All right everyone, [welcome to application development](https://www.google.com). I'm really excited to be teaching this class again. This is the second year that we've taught, [inaudible 0:10] , and I think the first year went well. We learnt a lot, and of course should be even more useful to you I hope this year.

 - First thing
 - Second thing
 - Third thing

---

 1. First
 2. Second
 3. Third

> It's a big advantage, when you're considering an idea like putting a college facebook online, if instead of merely thinking "That's an interesting idea," you can think instead "That's an interesting idea. I'll try building an initial version tonight." It's even better when you're both a programmer and the target user, because then the cycle of generating new versions and testing them on users can happen inside one head.

```ruby
class HtmlWithPygments < Redcarpet::Render::HTML
  include Redcarpet::Render::SmartyPants

  def block_code(code, language)
    Pygments.highlight(code, lexer: language)
  end
end

@import url(https://fonts.googleapis.com/css?family=Merriweather:400,300,300ital
```

abcde­fghijklmnopqrstu­vwxyz­abcde­fghijklmnopqrstu­vwxyz­­abcde­fghijklmno pqrstu­vwxyz­

I, in 2009, start[^1] with this slide. I don't have that many slides. This is one of about three slides, that I'm going to use this quarter. This idea is really important for this course because we have ten days. A half of one day is the midterm, so we have nine and a half days to learn how to code. That's crazy. I'm assuming you started with nothing.

[^1]: This is my first footnote.

Lorem[^lorem] ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

[^lorem]: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

This is vast[^footnote] amount of staff that we could learn, but we just have to search the space according to what you need, to make your ideas real. So I rely on you to ask questions about what you want to do, what's fuzzy about what we've done already, make sure that we're hitting what we need to hit. Most of what we do in this course is I'll show you some things. It will be fuzzy and I need you to ask questions so that we can have a conversation where the real learning happens.

[^footnote]:
    > Blockquotes can be in a footnote.

    ```
    as well as code blocks
    ```

    - First thing
    - Second thing
    - Third thing

    ---

    1. First
    2. Second
    3. Third

    or, naturally, simple paragraphs.

    # and headings

    ## and second headings



### Another Headline `belongs_to`

Anyway, I like this quote, "If[^2] you don't have to question then there's nowhere for the answer to fit." There's no point even introducing a topic in my mind until one of you ask me a question about it. Whenever you're like, "Man, I wish I knew how to do something," ask it and that's where we'll go next.

[^2]: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

## Why `factory_bot` is better than fixtures in many cases really long heading

That said, let me say a few words before I open it up for questions. The point of this course is, basically, there's something you guys do 10, 000 times a day. You open up a browser, you put in an address, you hit return and then you get back some content, right?

Step one, put in an address. Step three, get back what you want. If you're anything like I was four years ago, which is when I learn how to code. Step two was...

### Another heading

[laughter]

Raghu: ...but this flow as it drives modern life, right? You do this, how many times you do this a day? Even when you do it on your phone, the same thing is happening behind the scenes. The point of this course is, basically, demystifying step two. All right, let's start.

### Same level

## And back up

When you hit return you're placing what's called a web request. The request hits our application, which is mainly composed of three parts that we're going to have to learn how to use. There's a server router lair, there's an application code and then there's a database.

Now, basically the job of the server is to sit there listening for requests coming in. Twitter servers probably gets millions of requests per second, I don't know about that but a lot. Once it hears request, it passes off to the appropriate part of that application code based on what the URL was, what page do they want.

# Top level

I heard a request, somebody's asking for twitter.com/chicagobooth. It identifies it, tells the application code what's being requested. The application code, its job is to prepare and it told the response for that particular request, for that particular person.

In this case, it might be to get, out of all the tweets the Twitter has, just the tweets for the Chicago Booth or just my home page, my feed, which is the tweets from the people that I'm following. All of that is complicated structured information which is stored in a specialized free software called the database.

Almost every application that's useful to us requires some data storage that we use the database for. The application code is going to say, "Hey database, I need the tweets from the people that this person's following." The database says, "Sure." Gives it back. The database just stores plain text. It's not colorful, it's not pretty. It's just the text or content.

Then the application is going to wrap up that raw data in some formatting, make it look nice then send it back out. Finally, back to the browser. Then the browser displays it. That's the life cycle of one web request that, we place thousands of these every day.

## 98% the same

We need to learn how to do this stuff. Primarily learn those three pieces. Now it's a lot of stuff. Here's some good news. Did you guys notice? This is a fact, I think. There's 98 percent of our DNA we have in common with chimps. It's just 2 percent that makes us different actually which is amazing but most of it is just plumbing that makes us alive and breathe and things like that.

Similarly, all the stuff there in the previous slide that I described that whole life cycle like application server, application code database, listening to web requests, all that kind of stuff, every app has to do that. That's actually most of what it takes to get a web up and running is this kind of standard, ball of plate stuff that every application requires.

Twitter and Groupon, 98 percent same. Just 2 percent makes them different. Or the New York Times and GitHub, GitHub is a site that we're going to be using all the time in this course. It's basically the center of the software gulf in the universe now. We're going to share codes. It's where you're going to submit homework. It's where your exams are going to live.

Eventually, when you hire developers, you're going to look at their GitHub profiles to see how good they are. GitHub is port. Anyway, New York Times and GitHub, two seemingly very different content sites, developer tool, 98 percent same. The good news for us is even though there's a lot of stuff involved here this all common to every web app.

Some very kind people have basically...Actually, do you guys know "Basecamp"? This project manager software it's written by a company here in Chicago. They actually wrote "Basecamp", took the 98 percent that everybody else could benefit from and released it for free. So, a lot of this programming we will get for free. We just have to get a little bit literate in one or two languages so we that we can leverage all of that free power.

That framework is known as "Ruby on Rails." It's an open source framework for building web applications that we are going to steal. We just have to learn a little bit of Ruby, which is the language that it's written in so that we can get around it and a little bit of HTML. So these are the main things we're going to focus on. HTML is the markup language that we can use to take raw texts and make it look nice. This is the language that web browsers understand, the only language web browsers understand.

We have to learn that because ultimately we're trying to send data to our users web browsers. Then we learn a little bit of Ruby, which is a powerful gentle purpose programming language. You can do anything with it. You could write technically 3D games with it and now a days you can even write iPhone apps with it.

We're specifically just going to get a little bit of literacy in it. So that we can then steal this framework called "Rails" that makes it possible for us to build fully featured interactive data based backed functional applications in ten days. Sound like a plan? Any questions so far? What's fuzzy? Good? Yeah?

Student: [inaudible 7:41] the difference between Ruby and Rail.

Raghu: Excellent question. Ruby is the actual fundamental language and you can write whatever you want in it. But let's say, I started writing a program to calculate a mortgage payment. So I've finished this program. It's beautiful. Takes an input of the number of payments, interest rate, principal value and spits out that loan payment at the end right? That's probably useful to more than just me so then maybe I share it with the world. I give it a name "Raghu's Awesome Payment Calculator".

But it's just Ruby. Still it's written in the language that's Ruby. "Raghu's Awesome Payment Calculator" is just a name for this particular snip bit of code that I wrote and released. Similarly Rails, it's just Ruby, that somebody wrote, David Heinemeier Hansson, here in Chicago. It's a bunch of Ruby to him and by now thousands of other developers have also contributed. It's just a name that we give this huge package of Ruby.

There's even other web application frameworks written in Ruby. Sinatra is another one, it's just another name for a separate bunch of code that you could steal. It's lighter weight, little bit less fully featured but simpler. I prefer Rails because it makes it easier to do more powerful things quickly. Does that make sense? Any other questions so far?

OK. Yes, I am going really, really fast and it's because we have such little time to cover so much material. I rely on you to slow me down with questions whenever you need. OK, so we are going to get started. I'm not using Blackboard or Chalk. I'm not using a lot of the other stuff.

One of pieces of feedback we got from this course in the past was there's just so many different website and tools. It was confusing to have them spread out all over the place. We are going to use Canvas and I'm going to try to keep everything centralized to Canvas.

Go here. Enroll. Once you're enrolled you should see a link on the left for syllabus. Just click in that. Read through it. I don't want to read it to you for 40 minutes so just read through it and write down any questions that you have. We'll chat about those questions and then we'll start writing some code. All right I'll give you five minutes to read through that. All right all, anybody have any questions that we can start with after reading through this? Yeah?

Student: [inaudible 10:25]

Raghu: HTML, like I mentioned, is the language that the browser knows to format things and make them bigger or smaller, red or blue. You have to learn that because you want to ultimately send information to browsers. Got to do that one. Now, if all we learned was HTML you could only make a static unchanging site that's not interactive at all. Just like a brochure or a landing page maybe. But it'd just be that same content for visitors it'd look the same.

What we really want to do is when a user visit our site, we know who they are. They can sign in or something we know who they are. We know what they want and we dynamically generate an initial page for them bases on their actions or whatever.

In order to dynamically write that HTML, you have to learn some programming language. We have chosen Ruby because it's the most beginner friendly language in my opinion and Rails is such a powerful framework for doing what we want. We get to borrow that, but it could have been any other.

There's many other languages that we could have chosen, but you need some actual general [inaudible 11:35] programming language to write the HTML on the fly to create interactive dynamic websites.

JavaScript, which unfortunately have much time to get to hear. I'm just going to give you a taste. Once you have a page loaded in the users browser, if you want any interactivity at all in that page, even if it's animations like sliding up and down or image carousel, if you want anything dynamic once the page is been delivered to the user, you have to use JavaScript.

It's a scripting language that browsers understand and which you can use to do things like animations and things like that. That's really a last little rare of UI polish at the end, which I'll give you a taste of, but we're not going to spend much time on. We're going to focus just on getting the application working before making it super pretty with JavaScript. Does that answer your question? Any other questions? Yeah.

Student: I just want to clear on this and maybe IDFIS again. Is there [inaudible 12:38] URLs as using Ruby rail programming? Isn't that a more popular programming language used today by [inaudible 12:51] . You just want to learn so well in more popular?

Raghu: Yes. Ruby is the language and then the frame that happens to be called Ruby on the Rails. I remember it just refers to as Rails. Ruby is the language, Rails is the framework.

Yes, it is nowadays for a specific type of application because it's easy to learn. Let me rephrase. Part of it of what it makes it easy to learn is there's such a big community around it, an open source community for signing in and signing out for example. That is a very sensitive hard thing to do right.

Security is really hard, cryptography and crazy stuff. If you had to write that yourself securely for your app from scratch, you could spend months of developer time getting it right.

In the Rails community, everybody shares. There's one battle hardened library of code for sign in, sign out that everybody uses and its had 10,000 developers eyeballs on it finding promise on it making it better and better.

The same reason that it's easy to use is the same reason that it's also the most powerful and real professional companies used it, which is there's all this libraries available that you can used and contribute back to so your app get the benefit of all the app. Basically, if you're running on Rails you get the benefits of all the other companies that are running on Rail because we are all contributing back to one another.

For start-ups especially or even new products within existing enterprises anything small and experimental, Rails on Ruby are so much easier to change as you go along. There just fast to try something. If you get it wrong, throw it away start all over again and you have a bunch of tools to be able to go really fast.

When you're still trying to search for product market fit, it's a wonderful choice. Even if someday you know you need like an actual iPhone app, if I steal myself prototype as a Rails app because it's just so much faster to figure out the features that I wanted general UI flow before I invest a lot of money building in iPhone client, android client all these other clients. Does that mostly answer your question? Any others?

Let me see if I can call out a few things. First, I want to say we have a really unique feature on this course, which are faculty coaches. Booth has been amazing in providing this resource to us, so we have professional developers to act as your TIAs.

You guys get to book 130 minute appointment per week, hopefully to go over the home works that you've already submitted. Because what we've found is the best learning occurs after you've already turn in your homework and then you could have a conversation about like how to make that code a little bit better or if you didn't get anything right to make sure that you catch up before we move on, because we build so fast on old concepts.

Ben is here and Argen is here and we have another coach in the morning Ramesh, and it's such a huge asset. Please take advantage of that resource. There's this URLs here which right now may not have any slots open but they will have slots that you can book for each of us. We usually just run them remotely by a Google Hangout to make sure that it's easy for everybody to take advantage of it. That's great feature that we've got.

Let me see you start a few questions over here. My name is pronounced Raghu that's pretty common one.

Student: If you have like a [inaudible 16:42] application for competitions.

Raghu: That's a wonderful question and that was something I was hoping that we will have. Basically, in this course, again we got nine and a half days so I'm going to show you guys the most straightforward way to write your code, but it's not going to be what professional developers write because they used a lot of shortcuts and a lot of tips and tricks of the trade that produces more concise code, but much harder to conceptually understand if you don't know what's going on behind it.

We're going to be writing the most obvious probably the most robust form of code that will work. If we have an app of two course then I would show you guys just a little bit more what we call refactor or revise the code to be more concise, and more maintainable to use. Basically just to get you more familiar with what real world does, so that you can actually jumped in to a real world project and maybe contribute something like that.

We're thinking about it at least maybe a five week short course sometime this year or the next summer, but we haven't sign it yet.

However, I will say that from every section we've had so far at least two or three or four students have formed a little study group and I give a reading list. People have just read the book that I would cover into hat class and got on to build their stuff and deploy that. There's always that in case, we don't get that second course added to the catalog.

Usually there's a lot of folks wanting to audit. I don't know if any of you are generally we can't because we have so many request that we can't accommodate, but I think there's only 29 people in here. If you're on the wait list you might actually get in, we'll see. We'll play it by this quarter. Keep in touch if that's an issue. Some people are worried that they can't do this. I was too, but I tried to learn how to code like four, five times. It only worked that last time.

I took computer classes in colleague a few times and I did fine in them, but it seemed so much, and that I would not be able to get to the practical applications that I was interested in. Like I would be learning about how to manage the memory on the computer like zero's and one's and very theoretical stuff and then I get to the end of the course and I don't think I can do this and then I give up. Then I ended up majoring in economics.

[laughter]

Raghu: So the point is with the tools that are out there today, like with Ruby and Rails open source community, there's websites out there that you will quickly discover when you start goggling for help where professional developers have nothing better to do all day than sit around all day and answer your questions.

Raghu: Every question that you would want to ask has already been asked and answered within Rails. There so many resources nowadays and we've been working hard to narrow down and just figure out the exact right thing you need to know and we show you nothing that you don't, to make it actually possible.

You can do this but if you have never written a line of code before, it's going to be a lot of new things all at once you going to learn how to use text editors and the terminal window which is that scary black window that you see in movies, hackers always that green text that's very scary but will be learning all this stuff, but it's going to take some time.

You will have to be willing to put in the time, like I tell people to be prepared for 10 hours a week. But if you can do that then you can do this. We also in return are going to be putting up a lot of time to support you. There is the one on one appointments. There's going to be [inaudible 20:45] outside of that, so yeah I think you can. I don't think I'm the only class that matters when I ask for 10 hours a week. It's not like I think I'm the only class that matters, it's just there's all this new stuff. There's little overlap between this and anything else you might be doing. It's the only way we've been able to do it.

Rails I think we've covered now already pretty good understanding. Does anybody have any question about this now? Yeah?

Student: It's not like the only way to do this as you mentioned earlier a lot about requesting from databases and [inaudible 21:18] is there any probably any other way it uses equal?

Raghu: Yes.

Student: [inaudible 21:20] is there other way that you find it equal.

Raghu: It isn't so, it's beautiful. It uses SQL. The beauty of Rails is there's like 10 languages involved in that whole thing actually. There's HTP, language of like sending packets across the Internet SQL is transacting with the data base. There's a bunch of stuff involved as well if it's all up and running.

The beauty of Rails is if we just learn Ruby and then we get to speak Ruby and Rails translates to everything else. So yes we shall be using SQL but not directly. We will be writing Ruby which will be translated by an ORM into SQL for us.

[silence]

Student: [inaudible 21:59] in one on one environment skill if you want any special credit that where the after moth to review it homework it or?

Raghu: Yes. Primarily, my hope for the one-on-ones is that first order businesses going over the homework you've already submitted. Most of the one-on-ones will be towards the beginning of the week, so that the home works are due towards the end of the week. That's mainly what the intention is, of course if you have a couple of questions that you are currently working on that's fine, but I hope mostly it's review. Just make sure that there is no gaps in your understanding that will snowball into big problems later.

All right, so I think I mentioned a little bit about this but basically we are not going to be building native apps that go on to app store in this class because the languages that will be required for that are not beginner friendly and not everybody has those devices and et cetera. But the good news is that once you learn programming and the basic concepts of it, in this friendly concept Ruby, if you're interested in learning some other stuff it's much, much easier.

Raghu: I tried learning iPhone apps before I tired learn Rails failed. Learned Rails became comfortable programming by building a few Rails apps, then I took an iPhone class a few years ago and it was like cake walk.

Just cause the concepts are easy and all you have to deal with is those horrible languages that are so much worse than Ruby, but you'll get the basic ideas. The other thing is we are going to use some tricks when we write our H-T-M-L and C-S-S which we may get in to today but we will definitely get to next time.

We are going to use a frame work for writing that which automatically give you a nice mobile site for free, like it's called the responsive frame work. If you write it in this way an application will resize itself to be decent looking no matter what size screen you are using. So again it's a good way to prototype even if you would eventually want an iPhone or an android app.

We will get part of the way there and how do I get an A. Come to every class basically. I'm recording the lectures and I'm making those available to you, but that's mainly so that you don't have to spend your time scribbling down notes, so we can talk when we are in class, and you have the confidence you can go back and you watch the video if you missed some little thing.

But it's not meant to be a replacement for coming to class. In fact I'm not supposed to give you guys access to any recording to any class that you missed. We will be taking attendance, so please come to class and ask so many questions. That's how this whole course is built. The only way it's going to work is if you ask lots of questions.

While I'm on that topic one of the new experimental things this quarter is we are using canvas that's new. Then there is link on the top left that's called Piatsa here, which we are going to be using for all of our discussions and communication everything. It's a product developed specifically for questions and answers.

Anytime you have a question whatever it is no matter how small or big it is or dumb you think it is, just come here and post that question and try to answer each other's questions. What I'm looking forward to while trying this system this quarter is I answer questions pretty first but if I don't get to it for a while some of you classmates can answer it like.

You can collaboratively and edit the answer like a Wiki and I can even go in and say, "Oh yeah, that's perfect," and I can mark it as the accepted answer. I might even start awarding credit for answering other people's questions.

You can ask a question anonymously here which I like. That's something I couldn't do in the old system. If you are not comfortable posting publicly you can just ask an anonymous question.

Try to avoid emailing me questions though mainly because then any question you have at least five other people have it too. By putting it here everybody can benefit and you can get response faster than if you email me because we have four other people monitoring this. Will try this and see how it goes this quarter. Let me know what you think of it.

[pause]

Raghu: The last thing is start early on your homework's because that just gives you more time to ask questions. Like I try to respond to questions very first. It's pretty sad if you get it answered like 2 AM on a Saturday, it's pathetic. But still if you start earlier in the week you'll still have time for like 5 or 7 back and fourths rather than that last night.

One thing I like about another new thing for this quarter, which is awesome, is we are being accepted from the curve. You can all get A's if you do all the work. It's hard but there points available for you to get. But if you do all come to class, there is attendance grades, all the stuff [inaudible 27:13] then everybody can get an A.

Feel free to work together collaborate help each other out. It's so helpful to have somebody sitting next to you when you're working on programming. Because you'll make a typo you will like drop a little comma it's breaking everything and you just can't see it because you wrote it yourself. But the person next to you will spot it in a second. Try to find a study group, it's incredibly helpful. Collaborate and hopefully everybody will do well.

That's the reason we tried for that is because people who take this course tend to be very dedicated and really hungry to know this and everybody will just learn everything you want them to learn, so that was good. Any questions? Yeah.

Student: With the homework we've got questions supposed to [inaudible 27:58] .

Raghu: Yeah. Try to use Piatsa for all questions of all kinds. We will talk about that next time, but you can like when you type some code you can like use this little formatting thing to make it look better and stuff so try to use that, but anyway I'll send an email about that. OK, any other question about the syllabus or the course the objectives or anything at all before we start programming?

Student: When do we get to develop the site?

Raghu: We are going to grab it right now, the first part of it.

Student: [inaudible 28:44] .

Raghu: Good question. It's mostly the same. The keyboard short cuts will be different we don't have the same keys on our keyboards. In week three when we get to Ruby, that scary black screen that I mentioned, it's different. Mac has terminal and windows has a command prompt.

So a couple of commands are like how to get into a folder and get out of the folder are a little bit different. Other than that it's pretty much the same. We going to be using the same editors and everything else will be the same. Windows tends be just a bit slower at running Ruby will see how it goes.

OK, in that case let's get started you are going to have to go to this URL and download the app, Sublime text. That's the editor that we are going to use to write all of our code. Whatever language we are writing we are going to use the same editor, Sublimetext.com/3. [cough] I'm a little sick today. This is paid software but there's a free trial that lasts forever.

[laughter]

Raghu: It will nag you. After the first month it's going to nag you once in a while, "would you like to purchase" and you are just going to cancel it, but make sure you actually cancel the little alert that pops up there. Some people drag it to the side but cancel it, because while that's active it wouldn't do some other helpful things like auto save file. All right, download that, install it and then open it up. Yeah.

Student: [inaudible 30:31] .

Raghu: Let's see. You are going to probably want to see this 64 [inaudible 30:39] here. The portable version I'm not entirely sure what they are talking about.

Student: [inaudible 30:47] usually don't have to install [inaudible 30:49] .

Raghu: Oh really.

[background noise]

Raghu: That's a handy.

Student: [inaudible 30:56] .

Raghu: OK, thank you. That's good to know. All right, you guys will find that. I'm kind of probably very knowledgeable about windows. I apologize. I've been learning over time, but you may have to help each other out a little.

Let's open up Sublime text. Now, I want to you to hear I have it on my dock or actually I almost not do that. I always use spot light and then start typing S-U-B-L, launch it.

If you launch Sublime and seems like nothing happened then go to the file menu and hit a new file and you should get a blank screen, for some of you already probably have a blank screen, but if you didn't file a new.

Sublime is a plain text editor. It's basically like Word. Start typing some stuff in here. Then I'm going to save it. The name you give this file is important. We're going to make our first web page right now.

Let's save this file. I'm going to just save it to my desktop right now and call it BIZ36. You can say whatever you want for this first part, but the important part is to end it with .html. That's known as the file extension. I'm just saving it onto my desktop so it's easy for me to find.

Now that it's saved, I just want to mention a couple of things about this. First of all, this is technically a web page. We made it, and it actually technically works. If I go find this file and double click on it, it opens up in Chrome and it's a very ugly page, but it's a page.

We wrote this source code in Sublime. Then we opened up that file in Chrome and we get some output. A couple of things to notice, we could have technically used Microsoft Word to enter these characters into a file and then saved it. That would have been the same result for the most part, but Sublime is custom-made for software developers.

There's a bunch of shortcuts and things that will make our lives easier. When you're writing a source code for interpreters like the browser or the Ruby interpreter later on, the only thing that those interpreters care about is the sequence of characters that are in this file. There's nothing like formatting or underlining or bold or italic, none of those visual formatting things that you can do in Word, you can't do any of them here.

You can increase the size of the font just for your own reading, but it makes no difference to the actual file. Sublime Text is a plain text editor because it gives you a way to enter characters into a file and save it without any formatting or anything else.

If we look at this in Chrome, was that what you were expecting in your web page? The information is there, but I very clearly put these three words on the same line, all these other things on their own lines. The browser doesn't respect that.

The reason is in HTML, all white space, any amount of white space that you have, the browser just interprets that as one space. Even if I had a bunch of tabs, hard returns and then I try to refresh the page over here, no change.

By the way, every time I make a change to my source code, I have to save the file over here in Sublime. Then I need to go back to Chrome and refresh because Chrome doesn't know that that source code changed until you refresh. Whenever you're trying to see if what you did worked, don't forget to refresh the page.

You may notice that I almost never use my mouse. I use my keyboard for most things because we just do this so often that it would be too slow to use my mouse, go down here, go to Sublime, make a change, go back down and find Chrome, file refresh. Too much stuff, way too slow.

Instead, I use command tab to switch from one app to the other, Sublime to Chrome almost always. On Windows, it's all tab. You can just go back and forth between your two most recently used apps. I'll make my change, command S to save, tab back and command R to refresh. That's a much faster and more convenient work flow. I will encourage you to start to get into that habit, if you want.

I also turned on an app. I will show you the shortcuts that I'm using at the bottom here so that you can try to follow along, although for Windows, they'll be slightly different. Generally for Windows, wherever you see command, which is this clover thing, you're going to most of the time have control, instead of command, but just ask if something that I'm doing isn't working for you on Windows.

Let's get this right. Basically, what we need to do now is learn some HTML in order to format this text content the way that we want, everything on its own line. Later on, we're going to make some things bigger and change colors and all this stuff. We need to learn HTML to tell the browser how to display this content.

The syntax of HTML is pretty simple. Basically, our goal with HTML is to tell the computer what kind of content each of these things is. We're going to tag it.

We're going to tag each bit of content to let the computer know that's the top-level heading, that's the second-level heading and this is a list down here. Then we can set formatting rules for each of those things to tell it what size, what color, what font, et cetera.

Here's how the syntax works. You have a less-than symbol, the name of a tag, a greater-than symbol at the beginning of a bit of content. Then at the end, a less-than symbol, a slash and then the name of the same tag. This is the opening tag, and this is the closing tag.

I've now told the computer that bit of content at the top is a top-level heading, h1. You can have h2, h3, h4, h5 and h6, your support for six levels of headings in HTML. If I now save this and then go back and refresh, now at least that first piece of content is on its own line. It's bigger and bold.

Let's do some more. Let's make this, a second-level heading. Notice here in Sublime, when I typed the slash and Sublime can guess that I'm trying to close the most recently opened tag. I don't have to type that all up. If I was just typing this in Microsoft Word or some other editor, that facility wouldn't be there. Sublime tries to be as helpful as it can.

Go back down here and refresh. Now I have my second-level heading. Now I want these four to be in a list of names. There's another element called li, that stands for "List item." I'm going to open and close...List item tags around each of these. Save and refresh that. You got something that looks like this now. We're starting to make some progress, trying to build up this class roster.

Whenever you have list items, HTML actually wants you to wrap all of your list items together into one element that represents the whole list. Here I'm going to add in a tag, ul. I'm going to put the closing tag at the very end of all of them, like that.

Refresh, nothing much happened. We just got some indentation on that list. The main idea here is you can and you definitely will a lot have elements nested within other elements. Right now we have four li elements that are siblings of one another. They are the same level, and they're all children of the ul element.

You could switch that to ol. Ul stands for "Unordered list." Ol stands for "Ordered list." If I switch that to ol, the browser will number those instead of bullet them. We use those two elements quite a bit, ul and ol. In this case, I'm just going to go with ul. Yeah?

Student: Can you comment?

Raghu: Comments, excellent question. For those of you who don't know what comments are, comments in every programming language, they give you a way to add some information into this file as just notes to yourself, but you don't want the browser to actually display it to the users.

Let's say I want to say, "This section is for instructors," but I don't want that to actually show up on the page. I'm just like making a note to myself for my teammate. In HTML, if you wrap that content in these characters like these, it will be ignored by the browser. In Sublime, it's going to turn it gray to give you a hint that this is a comment.

Student: That's good.

Raghu: Yeah. Sublime is cool. If I just have my cursor on that line anywhere and I hit command slash or control slash, it will figure out the [inaudible 41:23] comment for whatever language you're working in and comment out that whole line.

Then you can command slash again to uncomment. You can toggle, or you can highlight sections of code and comment all of it, which is handy for when you're working on something, it's not working. It's breaking, and you just want to get rid of it, but you don't want to delete it yet. You can comment it out, so the processor ignores it. I highlight and comment chunks of code all the time as I'm experimenting with stuff.

Student: [inaudible 41:55] .

Raghu: Command slash, or control slash. Now, one housekeeping detail. Whenever you have nested elements, for my sanity and your sanity, try to indent the child elements two spaces in because it's just much easier to understand the structure of the page that way. If you, for example, drop a closing tag by mistake, it's a lot easier to spot if you're indenting properly than if everything was on the same level. It's harder to see...

Student: [inaudible 42:41] .

Raghu: Yes. I just highlighted all of it and hit just tab. If you did that in Word, it would delete it all and replace it with a tab, but in Sublime, it knows you're probably just trying to indent all of it. Then you can shift-tab to go back the other direction.

Also, another awesome trick that I just learned recently, I didn't even really know about this. If your structure is correct with the right opening and closing tags, you can go to the Edit menu, go the Line menu and go to Reindent. It will figure out the indentation for the whole page and fix it, even it's off.

It does a pretty good job. It's not perfect, but a lot of times that's a quick way to get to a good state. It will highlight whatever is indented badly. Go to Line and go to Reindent.

Let's talk vocabulary for a minute. I'm going to start to refer to each of these things as an HTML element, which is composed of the opening tag, the content and the closing tag. I call the whole thing an element and then opening tag, closing tag and content inside. So far, so good?

Student: I have a question with the [inaudible 44:00] . Very similar, standard syntax, [inaudible 44:03] will just skip a line every different element.

Raghu: That's a great question. There is no rules written in stone. Usually, as you can see, naturally I try to skip a line between siblings if it's at the topmost level of the page. But when I'm on things that are like list items, I know there's going to be a lot of them. It would just create a lot of white space that I don't need. Really, it's more an art than a science. Just try to think of it as logical paragraphs and use a line break after the logical paragraph.

A couple of other crucial elements that I want to get to. The most important element arguably on the Web is a link. It's what makes the Web a Web is the links between pages. Let's add something here. I'm going to do a section for resources. Then let's add a couple of links. I want to link to the...That was another shortcut I should mention.

If you know you're going to want an element for ul, you want an opening tag and a closing tag, you can just type the element that you want. When your cursor is blinking right there, hit tab and it turns out into the opening and the closing tag.

Ul, li and I want a link to the "Course Canvas Page" right there. I want that to be clickable. If I save this and I go back here and refresh. There is the text right now, but obviously, it's not clickable yet. I would like that to go here.

Here's how we make links. We use the A element. Let's wrap the content that we want clickable in opening and closing A tags. Then what we need to do is tell the computer where to go when the user clicks that content. We do that inside the opening tag with something that looks like this, href=, I'll just type something in and then we'll talk about it.

This is something new. Until now, we had elements of opening tags and closing tags. Now we have something new. This element has opening tag, content, closing tag. Also, inside the opening tag, it has what's called an attribute.

An attribute is a pair of things. There's the name of the attribute and the value of the attribute. The name always is followed by an equals sign. The value is always contained within quotes. I think href, I'm not sure what it stands for. Do you know what href stands for?

Student: Hypertext reference.

Raghu: Hypertext reference, yes. It's basically where we want them to go. If we save this, refresh the page, now it's blue and underlined. It's a link. If you click it, it takes you to Google. Instead of Google, let's put the real URL. You don't have to if you don't want to, but we're going to put the real URL in here around "Course." It's starting to wrap. I'm going to start putting things on their own lines just to save space.

I have an opening tag, attribute, content and closing tag in this element. Any questions, so far? If you're stuck, let somebody know. We got people waiting to answer your question. So far, so good? All right.

That's enough for now for that. A couple of things, I guess. So far, this is working fine. The browser is drawing it without any complaints, but technically, this is not a valid HTML document. We skipped a bunch of boilerplate that every HTML document is supposed to have in it. Let's go ahead and add that in so that this is now a valid document.

First of all, at the very top, you're going to want to have what's called the DOCTYPE declaration. It looks like this. It's weird. It almost looks like an opening tag, but it's got an exclamation point. Anyway, this is just something to tell the browser what type of information is on this page. It's just boilerplate. You just got to have it there.

More importantly, every HTML document should be contained within an HTML opening and closing tag. I'm adding this HTML opening and closing tag around everything else that we had until now. I've got this and this.

Every document, in addition to having that, should have a head tag and a body tag, which we'll talk about in a moment. Basically, what you want the user to see, the content of the actual window should go into the body element. In our case, everything that we've written until now should go into the body element. I'm going to cut that out here and then encase it up in that body tag.

In the head tag, if everything that we want the user to see comes in the body, then what is the head tag for? It's for instructions to the browser on how to handle this document that's not necessarily content that we want the user to see in that window.

For example, notice here in the tab, it's just got the name of the file. Instead, maybe we want to actually have the name of the course up there. We could use the title element, say, something like that, in the head. Save it, go on refresh and now the tab here has a custom name. It's instructions to the browser on how to handle this document that's not necessarily content that we want the user to see in the window. Mm-hmm?

Student: Does the closed body go [inaudible 50:39] ?

Raghu: It goes before. You should never close a parent element before you close all of its children. What is this? I'm going to mess this up. The last opened tag should always be the first closed tag. Does that make sense? Good question. It's got this tree structure.

Now after moving all this stuff around, my indentation is off. I'm going to highlight everything and then I'm going to use that trick, Edit, Line, Reindent. That's going to make everything nice again. I only discovered that last quarter. It probably would have saved me collectively weeks of my life spent indenting things.

[laughter]

Raghu: It's looking pretty good. This is now a perfectly valid HTML document. It will look exactly the same, but it's now a better structured document. So far, so good? OK. I was going to add another section for students in here and build this up a little, but at this point, here's what we're going to do.

Now you guys have created your first web page yourselves just by going to Sublime. We did a File New. We started with a completely blank window. You saw how to create a web page from scratch. Now what I'm going to do and what we're going to do every day from now on is I'm going to show you how to download some code from GitHub that we're going to work on together for the rest of the day.

That's basically how the class is always going to run. You're going to get here in the morning or whenever class starts and then download some starter code from GitHub. Then we'll work on developing it together through our class.

In a browser, navigate to github.com/appdevfall15. You might as well bookmark that because we'll be going there a lot. This is our course's home page on GitHub. Once you have gone there, down here, you'll a list of all the code that we ever work on, all the projects that we work on. Each project is called a repository. All a repository means is it's a folder.

I wrote some code on my computer. I put it all into a folder. Then, I put the folder on GitHub. That's called a repository. This is the first and only one that we have, right now. If you click on it, you'll see that, inside there, I've created three folders. Each folder has a bunch of files inside of it.

There's a read me which, basically, will always contain instructions about the project and helpful info. If there is a read me present in the repository, GitHub will display it down here at the bottom of the project page. This is always good idea to have this up. I'll put some hints and reference material in the instructions for whatever we're working on. There's a bunch of stuff in here. If you get lost, you can check in here for some guidance and stuff.

Point is that you need to download this now. Actually, for your homework I have a video and a guide on how to download code from GitHub properly, in a way that will allow you to submit your homework for today because we're not going to submit anything.

Just in the interest of time, all I want you to do is download the zip down here in the bottom right. Just click this button, it'll download a zip file of all this code up here. Then open it up, extract it somewhere that you can find it. For me it goes into my downloads folder.

Then, what I'd like to do is open up the code that you just downloaded. We're going to open it up in Sublime so that we can start to work on it. Now, the way to do that is, in Sublime, if I look at this, this will just be downloaded. This has lots of stuff, there's three folders, probably 40 or 50 files total in that archive you just downloaded.

We're going to have to work on all of them, eventually. It would be a big pain to have to open up each one of those 40 files individually in Sublime. We're going to close this. We're done with this, I'm going to close that. Go to file, then on Windows you should have an option for open folder. Go to file, open folder on Windows. On Mac we just have one, that's just open. Find the folder that you just extracted. For me it's this folder.

Don't go any deeper into it, just on that parent folder itself click open. It opens all of those contents, puts them into what's called "The Drawer" on the left. Now, it's really easy for us to jump back and forth between them as we move forward. OK? You're always going to want to open the whole folder of whatever it has stored that you download when we get started.

If you have any trouble raise your hand we've got Ben and [inaudible 56:02] are just waiting to help you get unstuck. What's in this folder that you just downloaded, are some exercises that we're going to be working on today.

Generally here what I'm going to do for HTML is, so we're going to start in this one roster, one semantic. There's usually going to be a starting point, and then a target and your job will usually be to edit these. What we're going to do is open both of these in Chrome. So I'm going to close some stuff here, let me close these old stuff. Try to keep as few tabs open as possible so you don't get confused.

But I'm going to open...let's see, roster. Here's what I downloaded I've got roster, start. In Chrome if you want to open that, on Mac, just go to file open, or on windows you do control O to get the file dialogue. I'm going to open the second tab, then open the target.

We already did this part basically but, if we had started from the beginning, we would have taken this raw content and then edited it until it looks like this, which we've already done. Notice here we just have raw content without any tags or anything in it? Then we would have edited it until it looked like this which is what we did already.

Oh, here's one thing that we didn't talk about. If you want a link to open up in a new tab, then you can use the second attribute on it, like this. So we have the href attribute, and then a space, and then a second attribute called target. That will make it open up in a new tab when clicked. All right, so far good, everybody caught up? Questions, what's fuzzy so far?

Student: [inaudible 58:15] .

Raghu: Sure, about this attribute here? That's just, you add that attribute to the opening tag of the A tag, if you want the link to open in a new tab. Yeah?

Student: [inaudible 58:30] .

Raghu: Actually I'm not sure if we can do that anymore, the developers. I think it's a browser preference the users can say, whether they want things to open in new tabs or new windows. So this is all we have to my knowledge. Does that sound right? Yeah, I think so.

Student: [inaudible 58:56] .

Raghu: Oh yeah.

Student: [inaudible 58:59] .

Raghu: Yeah.

Student: [inaudible 59:04] .

Raghu: Yeah. That's what we find. The order of attributes doesn't matter. Good question. Any other question so far? If I asked you guys to explain to me everything in here, you'll be good with it? It all makes sense? Mm-hmm?

Student: [inaudible 59:34] .

Raghu: Great, yes. We noticed that there's some extra white space around it, right? All we've done here is we've tagged each bit of content to tell the computer what thing are, because the computer can't understand it just by looking at it like we can. We also for free, by doing that, we got some styling out of it. Browsers have default styles that it uses for each type of tag. Chrome decides H1 should be big and bold, and have a margin of 20 pixels above and below.

Et cetera for H2 and this title should have bullets and all that stuff. Which is convenient that they have some default styles, doesn't mean that we never want pages that look like this. The default styles are not very pretty. We're going to always override all of those styles anyway. We're going to specifically say, exactly how tall a heading should be, how much space should be on it, what color it should be.

We shouldn't choose the element that we use to tag a bit of content for any stylistic reason. We should choose the element that best describes what that content is. We don't have a lot of choices in html, there's only like 30 tags that we use. But choose the one that most closely describes what that content is, in particular headings if possible.

Try to have an actual hierarchy of top level heading, second level heading, third level heading. Then, if it's not the right size, if H3 is too big for you, then right now we're going to learn to customize the appearance of it. Yeah?

Student: [inaudible 61:29] .

Raghu: And what?

Student: [inaudible 61:36] .

Raghu: OK, if you're working on this file here?

Student: Yeah.

Raghu: A couple ways to do that would be...you don't have to by the way right now we're going to skip to the next part since we've finished this part already. We're going to go to styling next.

But since you asked, if I wanted to quickly make all of these list items, basically what I want to do is get all of, they all have these hyphens in front, right? I'm going to select that and then I'm going to hit command D, and going to keep hitting it until I selected all of instances of that particular pattern.

Now, in Sublime what you actually have here is a cursor at all of those spots. I now have like 30 cursors blinking. I deleted it and then I'm going to type my li tag, and it types everywhere that I've got a cursor. Then I want to jump to the end of the line, which I would do on Mac with the command right arrow, or on windows, you should have an end key, so jump to the end and then all close out that type.

Command D is a handy way to get multiple cursors, in order to change a lot of things all at once. Another way to do it would have been, if I just hold command and click in different places wherever it is. Notice I'm getting a cursor everywhere? Now I can type out a bunch of things all at once.

That's another handy thing I could command click all the way down and do that, or I can hold option and left click and drag. That gives me again multiple cursors or on windows its hold, shift and right click. On Mac it's hold, option and left click.

There's a lot of cool Sublime picks and I don't want to spend too much time talking about them. But on canvas basically, my desktop wallpaper is a commonly use Sublime shortcuts. I made this for myself while I was learning, years ago. I put this on canvas under files. If you want that wallpaper you can download it and refer to it. I don't have the windows translation for all of them, so if some kind soul would be willing to may be find those out and post them, that would be great.

The first part of this exercise, I called it one semantic because the idea was to go from raw text content to structured HTML. With HTML we are adding semantic, meaningful content into unstructured content.

The next step is to make it look good. The default browser styles are not great. We are definitely going to always customize these to make our sites look better. Let's close these and we are going to move on to the next exercise in the folder called Two-Styling. I am going to close these tabs and instead open Two-Styling Start in one tab. Then I'm going to get another tab, and in this tab I'm going to open the target.

The starting point is basically the previous ending point. We just have structured content. Now what we're going to do is we're going to practice making it look better. We're going to make it look like this. That's our goal. Any questions before we start on the styling?

Student: Where did you find that [inaudible 65:33] ?

Raghu: It's under the Two-Styling. Under Roster, Two-Styling, and then we have Start, and Target.

Student: Got it.

Raghu: Ready? First. In the target the first thing we see is this logo image. Let's get that going. We're going to be working on Start and editing this until it looks better. Let's go ahead and add a new element we haven't seen before, IMG, for image. Image is one of three tags that don't require a closing tag. All you have is an opening tag.

Then you have an attribute, SRC, which stands for "Source." Here what you have to do is give it a file, an image file, or a path to an image file, actually. I have included one in the code that you downloaded. There is booth_logo.jpeg, right in that same folder. I can use that. Booth_logo.jpeg.

If I then go back and refresh my page...don't get confused between your two tabs, by the way. You have your target and you have the one you're working on. Make sure you're refreshing the one you're working on. Now I have my logo image at the top here. This could be a path to any file, even one on the Internet.

Let's say, I just go to Google. Google's got their logo here. I can right-click on it, copy image URL in Chrome. If I paste that in to my address bar...this is actually the address, the URL, Uniform Resource Locator. This is the address of just that image. Every asset on the web has its own URL that it lives at. These things can be composed into a web page, like this. I can put that right there too, the Google logo into our page and use that. The new Google logo.

I read that part of why they chose this new logo is that there are so many perfect circles in it that if they describe it in terms of formulas instead of actual pixels, they can get it down into 305 bytes. Not kilobytes, not megabytes, just bytes. It's crazy. I guess they serve this logo 500 hundred-billion times a day, so it makes sense. Let's go back to our logo.

Student: [inaudible 68:40] .

Raghu: Great question. If I do this, it works because booth_logo jpeg happens to be in the exact same folder as this. But if it's in a different folder...let me move it here. Nope, not there.

Let me make a new folder. I'm going to call it images. Put that in here. [computer noise] Put this in here. [computer noise] Now my image is in a different folder, yeah? If I go back and refresh my page now I get my sad, broken image thing.

We have to update the path to say, "OK, if you try to navigate from where this document is, you're not going to find that." But you can say here, "images, slash," which is saying, start in the folder where this document is. Then look for a folder called images. Then look for a file called Booth Logo inside of that.

This should work again. If you wanted to get fancy...let's say if I moved this up all the way to the roster...now this folder is now siblings with the folder that contains the asset.

Now, since we're getting fancy...you have to say, "OK, to get to here, this image, from where I am, you first have to go up a level, which gets you into the Roster folder. Then you have to go down a level into the Images folder. You can do it like this, "../".

Dot, dot means go up to my Parent folder. The Parent folder of where you currently are, which gets you from the Styling folder, into the Roster folder. Then down to the Images folder, and then down into the Asset.

Student: [inaudible 70:51] .

Raghu: You can do ".." and then another ".." and as much as you want. You could also technically just do a /. But that's not a good idea. That will start at the top of your hard-drive. Then it will be your username, and then your home folder. If you send me that it won't work for me because I don't have the same username.

The folder names I have on my computer are different from yours. It's better to keep the path...This is called an absolute path, starting from the very top. It's better to use relative paths, starting from the document. Because then you can zip up that hierarchy of folders and send it and it will still work.

Student: If you put on your site a 'local image,' then you go to the website and put in a URL, or whatever, will it have a URL specific to that because it's online? Like we did that with that Google image?

Raghu: The images that we have locally, it wouldn't be accessible to a visitor over the web. You would have to take your image, post it somewhere, so that it has an Internet address, and use that as the source, which we'll see how to do. Don't worry.

Very good. Just going to go back to how we had it. We'll that's fine. Now, the next thing if we look at our target is this heading. It's like maroon, and then gray. Something like that. So let's start to get that going. Let's think about colors and stuff.

Now, in order to get styling, we have to learn another language, right? So, we haven't quite reached our first break yet, but we're going to start our second language. That's just how fast we have to move.

Here's what we're going to do. In the head of the document, open up a style tag and then close it. This is a special element of Sublime, it turns it back to gray. Because what you've done here is you've opened the door to another language. Now between this opening and closing tags, we don't use anything that we've learned so far. We're not going to use opening and closing tags anymore.

We're now going to learn a new language called CSS, which looks like this. You're going to have a selector, property and value, like this. Let's just do it like this right now. So I'll talk about what each of these is, but let's just make sure that it did something. If I go back to Chrome and refresh my page, you'll see now that this top of the heading is [inaudible 73:50] .

Let's talk about CSS here. This is a whole other syntax. Like basically, in 40 minutes, you guys learned almost everything there is to know about the syntax or the grammar of HTML. This here is pretty much an example of as complicated as it's going to get in HTML. You have opening tag, closing tag, content, in this case, nested elements.

You have multiple attributes in here and that's pretty much as complicated as the syntax of HTML gets. Now, we're going to have to spend some time, you have to expand your vocabulary. There's another ten or so elements. Mainly around creating forms that we need to learn. But it's all going to be the same, opening tag, closing tag, content, attributes, syntax. Then you've got to learn some more vocabulary.

Now for CSS, this is the syntax, the grammar. You have a selector, which is saying that is the type of element that I want to apply, a styling you hold to. Then, you have curly brackets and inside you have property-value pair, the property and the value. Now, just for my own, CSS is like HTML where white space have no functional effect.

I like to use white space for my own sanity. I try to put some spaces in here, like this, just to make it easier to read. Then we can have multiple properties, let's say 22 points. Something like this. If I refresh that, I should get...That's too close to tell. Maybe, make it 32, that's a lot bigger.

We have a selector and then we'll always have curly brackets and a list of property-value pairs. The property is separated from the value by a colon, and each pair is separated from one another by a semi-colon. You could, in theory, have it all be like this and it would work fine. But just stylistically, I like to have each property-value on its own line.

Student: So each one with standard heading [inaudible 76:23] ?

Raghu: Nope. If I did H100 here and then try to use an H100 element, you can't do that. You have to use the elements that HTML gives us, of which there's like 20 that we use. That's a great question, because for example, it's fine here that I made the H1 maroon. But let's say I'm going to make the H2 blue. So now, if I look at this page, I have all my H2s blue.

But what if I want this one to be green? I have two elements, two members of the same class of elements, but I want them to look different. Now, this kind of selector is not going to work. I wish I could make up my own selector. But I can't make up my own tags, I have a fixed number that I can choose from.

But here's what we can do. This is a great question, this is what we're going to actually do all the time for our styling. We almost never use tags like that reason that you have noted, they're not specific enough. We're going to add an attribute to this element called class. Here, you can make up whatever value you want.

Let's say, apple. Then, we're going to make this one, orange. No, let's say banana. Now, I can write a selector for apple and make that red. Then, I can write a selector for banana and make that yellow. Except, that's not quite going to work, because, as we learned, it's now going to look for elements called apple which we can't do, that doesn't work.

Instead, when you're making the selector, start it with a dot. If we know start these with dots, we're saying, "Hey browser, go search the document for any elements that have a class of whatever this is," and make up whatever you want.

Student: You're going to switch to [inaudible 78:42] ?

Raghu: Where?

Student: [inaudible 78:47] .

Raghu: No, so this, I'm just styling this up here, that big thing. I have instructor...I have this one with a class of apple and this one with a class of banana. Right? Now if I refresh this, I should have this one red, this one yellow and that's a more specific way that you can surgically apply styles to any element that you want. I can now go in and say class equals apple on that listing and now it's going to pick up that style rule.

Student: Why do you pick up a style [inaudible 79:28] ?

Raghu: It's just a convention, you don't have to. We could take this out technically and I could drop it right in the middle of my document and it's still going to work. But generally speaking, the head of the document is where all of this non-content instructions belongs. We're going to see an even better way of doing that in a second.

All right, let's pause for just a moment. That's a lot of stuff. Somebody ask me a question, anything. [pause] Is this deer in the headlights? Or is it, "We got this, we're all over it"?

Student: Actually, can you scroll down to the [inaudible 80:80] ?

Raghu: Yeah. Technically, I could even make another class. Let's say, I'm going to call it important. There's another property called text declaration underline. So, now I've created this class. It's unused right now but it's going to underline whatever. I can go through and say, this and this is important. Now those elements are going to pick up that styling of underline.

I can even apply multiple classes to the same element. I could say apple space important. I can separate multiple classes with a space inside that one attribute value and all of those styles, both of those rules are going to apply to that element.

Student: [inaudible 81:22] .

Raghu: Excellent, they're contradictory. If we said color pink, it's going to use the last one. There's two levels. First is specificity. Let me demonstrate. I'll put this back. Here we have color maroon on the H1, right? Then I have apple, let me use banana. If I add the class of banana under this H1 tag, now it's getting color yellow from this rule and color maroon from this rule.

It is going to be yellow. The reason for that is class level selectors are more specific and the more specific one takes priority. There's some math that you can actually do, I forget, like tag level selectors have a value of one, class selectors have a value of ten and then you sum up the specificity to decide which rule wins. Now, if they both are the same specificity, like apple and banana, then it's whichever one is the last wins. So, that's how that works. Yeah.

Student: [inaudible 82:50] .

Raghu: Yes, if you do this kind of thing. That's an attribute that entire versions of HTML was necessary. In the current version, it's the default so if you leave it out, it's going to assume CSS. So, we can omit it. It's just saying that inside here, we're about to write CSS, the CSS language. It's a relic of days back when there were other styling languages. Now, everybody is centralized on CSS, so you don't have to anymore. But it doesn't hurt to leave it in.

Last thing before we take a break. Let's say, I'm really proud of my awesome style sheet, it looks great. We want to roll this out for every course at Booth, you want a course page like this, that has a similar theme. I would have a thousand documents that look like this with different titles and different content but basically, I want the same styling information, for all of them.

Then I'd have a thousand HTML documents that I have to go copy and paste this on all of them. What if I have decided that making the headings yellow isn't the best idea in the world and I change it back to maroon? Now, I have to make that change to a thousand documents, which is terrible. Or, if you find a bug that you have to fix, you have to fix it in a thousand different places.

There's a much more robust way of doing this. We're going to create another file, a brand new file here. I am going to save it into the same folder and I am going to call it, just call it "our styles.css" and I am going to end the file name this time with .css instead of .html.

This brand-new file shows up in here and it's job in life is going to be just to contain the style information for this document. I am going to take everything that I wrote over here, inside the style tags, cut it out even just delete the style element but drop all the rules over here. I didn't bother with my style opening and close tag here because in this CSS file, all you can run is CSS. Pure CSS no HTML at all.

I am going to save this file, go back and refresh my page and now we are back to where we started. There is no styling information here at all. I took it all out. But what I want to do is now connect this HTML document say, "Hey, actually just use whatever is in this file over here."

Essentially pretend that you copy pasted this content right into this spot and the way to do that is with the link tag. There is an element link and then you need attribute of Rail equal style sheet on it. I got this real quick by the way with the shortcut. I just typed to link and then I hit tab and then it filled out the rest.

Confusingly, the element link isn't for the blue thing that you click. That's the A tag. The link tag allows you to connect an external style sheet to a document. Now, we just have to put the href, the path of the external style sheet. We called it, "our styles.css" right there, kind of the same way we did with the image. Then if we go back and refresh our page, we should get our styles back. Here we go.

Student: [inaudible 86:56] .

Raghu: Just type the word link and while your cursor is blinking right there just hit tab and it should unfold the snippet for you. Did it work?

Student: No.

Raghu: Did you type the less than first? Don't, if you did. Just type link alone and hit tab. No luck? Might have to type it out to diagnose what it was. OK, the because of this though is, let's say, I had a thousand course papers and they all linking to the same style sheet. Now I can change, make a tweak and then all styles and pages will get it immediately, right. Instead of having to duplicate that knowledge all over the place. Yep.

Student: [inaudible 87:41] .

Raghu: Because of that, the last one wins rule. Over here, I can still below this have a style tag and say, something like .banana color purple, right? Since that's the same specificity but it's later, it will take precedence. If I had that here, now the one from the style sheet would win.

It's quite common to even have many external style sheets linked to the same document one after the other. One of them will handle the header and the other one will handle the sidebar and you can have a whole bunch of external style sheets connected to the same HTML document.

Student: [inaudible 88:39] .

Raghu: No, you don't. Good question. No.

Student: The link [inaudible 88:48] possibly in the header rather than anywhere else?

Raghu: It should be yes. It will work if you put it somewhere else but again conventionally we put all of that, non-content information, in the head.

Student: Right.

Raghu: All right. Great work so far. We are going to take a break and start up at 3:20 on the button.

[audio skips]

Raghu: All right, everyone. We are going to get started. So far, we have just some kind of getting a feel for CSS but this doesn't really look very much like this at all. Now, that we have a feel for the selectors and class level selectors and some of these properties, let's now try to morph this page to look more like our target. We have this nice external style sheet now which is great. I like that we have it.

I am going to delete some of these random things that we made just for learning purposes and take all these out here. At the end of the day, taking out all these extraneous stuff that we are just experimenting with, OK.

Student: [inaudible 90:09] .

Raghu: I don't think there is any faster than what I just did here. Just selecting it and reading it. Here we are, so basically now we have got the image, we have got the maroon color heading. But we still have a lot of work to do to make it look like this. Although, we do now have an external style sheet, so that's great. We can just write any style rows in here.

This is another reason why it's so nice to have the drawer on the left with all your files because when you are writing applications, they are working in like several files at once. You really want to have the drawer and your tabs up here to navigate quickly.

First and foremost, if I look at this target, the first thing that jumps out to me, maybe because I am a type nerd is the font here is different. So let's see how we can customize the font. We are going to use the font family CSS property. You can now say any font that you have installed on your computer.

I can say Helvetica, for example, and now if I refresh this page I get Helvetica. Move the style here. I get Helvetica for that heading. Now, if you are on Windows, you may not have the Helvetica font installed, so if you refreshed you might have not seen any change.

Did that happened to anybody? Does Windows have Helvetica now? OK. What's one that you don't have? How about Menlo? So Menlo looks like this. Does that work for you Windows people? Menlo? It just look like Times New Roman. I am hoping it didn't work.

Student: You just had a code to [inaudible 91:55] .

Raghu: Yeah. It's this right here and the quick way is type link and hit tab and it will write most of that for you and then you just put the file name right here.

Student: [inaudible 92:12] .

Raghu: Sure. I have got this and I have got this. Now, I was trying to show you guys. Menlo is this mono space font which is great for writing code. You always want to use a font where the characters are the same size. Menlo is one that's installed on all Macs but Windows done have it.

The point is when you choose a font, in the old days, you used to have to choose one that you could be relatively certain, the user had installed on their computer. Which is why if you think back to the old days, the early days of the web in the '90s, every website was Times New Roman, Arial or Courier New. Because that's all developers knew would likely be installed on every user that visited their site, which is terrible. Those were the dark days of the web.

[laughter]

Raghu: Here is what's great. Recently, in the last six or seven years, CSS gained the ability to...Remember how I was able to just use Google's logo here or new image on the web. I am able to copy that image URL, put that right there and my page now has that' asset be right. When you write a HTML document, you can pull in an asset that's sitting on somebody else's, anywhere on the Internet, you can pull it in and use it in this document.

Somewhere along the way, CSS gained the ability the same way to deliver an image to this HTML document. You can get a font also sent to that user's computer and then that font can be used in rendering this page. This is a relatively new thing called web fonts and it's fantastic news for web development, I believe.

I am of the school that, I believe that 90 percent of the visual design of a site is the font choices, assuming it's a content every site because your content is most of your site and it's where the rubber meets the road for your users and your content. I really am careful about my choice of typeface and before web fonts, you just couldn't do that.

Anyway, here is a thing. I want to use a font called Lato. If you try that on your machines, it's probably not going to work because you probably don't have this font installed. So just been a default, the Times New Roman. What I want to do is load in that font. Here is a great resource.

Google actually started providing web fonts to developers. I am going to Google, I think, it's just...If you search for Google web fonts...oh no, I lost my Internet. Bad timing. [pause] Are you guys fine, are you guys connected? Go to Google.com/fonts. Does that bring something up?

There is like 700 web fonts that Google hosts for free and you are allowed to use them in your sites. Google encourages you to use them. Here is what we can do. So just pick, you guys pick whatever font. Just scroll down through here. Find one that you like. You can do whatever you want.

Let's use PT Serif. I am going to click on, find one, click on this blue button to add to collection. In fact, you can have multiple if you want. But just do one for now. Then over here, there is a button called use. Let's click on that. You can get taken to a screen that looks like this. It says, choose the styles you want and you could just have the normal version. Maybe you want the italic. Maybe, you want the bold ones.

Let's, just select them all for now. It slows your page down a little bit. But you can always come back and slim it down later, if you need to. Then, it says, choose the character sets you want. Latin is fine. Then step three says, "Add this code to your website."

You can see here what is this, it's a link tag to a style sheet. Basically, Google is giving us a link tag to an external style sheet and it wants us to add it our page. So I am going to paste it right here underneath my style sheet link. I am going to add another link. This is a style sheet that's sitting on Google server somewhere. We are going to borrow that style sheet for a minute.

I just copied this code from step three and I just dumped it into the head of my document. If you get stuck again, make sure, you grab somebody. Now, the last thing is, it says, integrate the fonts into your CSS. Now, basically I can use this font in my CSS. I am going to copy this. Go back to my CSS and let's say, paste that in there, PT Serif.

With that, if I save this, go back to my page and refresh, now I have that font being used to render this document, even though I don't have that font installed on my system. If I go back out, for example, if I delete this, I've taken the link out. It won't have the link to Google servers anymore and I refresh and I try to use that font...dang, it worked again. I must have that font.

If I didn't have that font installed, it would have been Times New Roman again. OK, that in my opinion it's huge. You now have a lot of latitude when it comes to choosing fonts. I think I used a font called Lato here which you can use if you want. I've added to my collection, use it, select some of these weights and then copy the link and put it in my document. Now I can use Lato as my font. Any questions about fonts, web fonts? So far, so good?

OK. I am going to give you guys some optional readings for this homework. But I just have to say, there is this one site that I love so much. "Practical Typography" by a guy named Matthew Butterick, a former lawyer who now does like development and design stuff.

This is like an introduction to a book that he is trying to sell you. But seriously, it says, "This is a bullet train but I stand behind it. If you learn and follow these five rules, you will be a better typographer than 95 percent of professional Latos." 70 percent of professional designers and it's totally true. You should read this and then after that, I think, you will love the fact that Google fonts exist and that, it's so easy to use to make your sites look nice.

Not that I am going to grade you guys ever on visual design in this class. That's not the point. But it's fun. It's motivating for me to work on a site, if it looks better. I am just showing you some of my tricks.

Next on the target, we have...I don't know if you can notice, but that this is slightly smaller than the rest and it's gray. What I want here is to split this H1 and I am going to put that subheading into an element called small. That will allow me to, now that I have specific tags around those two different pieces of content. I now have a hook to hang my CSS styling.

If I just refresh it, it already is going to now be a little bit smaller. The browser will automatically make it a little bit smaller and I can write a CSS rule and say color gray, something like that. Now, it's gray. I can also do text transform uppercase in order to automatically up case the whole thing, if you didn't want to go and change your content.

I am going a little faster these CSS properties because it's not that important that you memorize them or anything. I just want to you give a feel for how to write selectors and then usually, I don't memorize any of these properties. I Google for them. I am like, CSS, how to up case? CSS, how to put a border around things? Then I just copy paste the solutions. But the general pattern of selector property value is important. Yeah.

Student: What [inaudible 102:01] ? Then usually, I put a dot in front of that [inaudible 102:06].

Raghu: Excellent question. Select a class is a selector, right. There is different types of selectors. There is tag level selectors, class level selectors and there is another called an ID level selector which we haven't got to yet. That's a tag level selector because I didn't start it with a dot. It's going to look for actual elements small on the page. If I do start it with a dot, now, it's going to look for any element like a paragraph with a class of small on the page, right? This is currently a tag level selector.

But you are right, actually tag level selectors, it's a little bit dangerous to you that because there might be many H1s all over your site and you don't want this style to apply to all of them. You are just trying to style one element. It's actually better to use classes. Let me make a class. I am going to call this subheading.

Student: Are they interchangeable?

Raghu: Now, if I go back and refresh. Save, go back, refresh, it doesn't have that style anymore. They are not interchangeable. If I want this rule to apply to that element now, I have to give that element an attribute class equals subheading. Let me go back to my HTML. Now, I have to add the class over here in order for that style to [inaudible 103:34] .

Student: [inaudible 103:35] .

Raghu: Thank you. OK, does that make sense?

Student: You don't need to [inaudible 103:45] smaller?

Raghu: If I didn't take this, like you have to have in HTML, the tag has to be some tag, right? If I do it like that, now that's not valid HTML. You do have to have some kind of a tag. It can be a paragraph or something in order to apply the class to it. You need an element. Great question. But yeah, generally, we should use classes, so that's better. You caught me.

We look at this, starting to look good. I guess, this is a little bit lighter weight. We could do something like font weight and use 100 which is the lightest weight that we have. This starts to look like that and then we could, I guess set a different weight on that. Weight, this may be say, 500. Close enough. Now that's fonts. That's pretty much all you are going to have to use fonts. Yeah.

Student: [inaudible 104:48] . How do you find out a search [inaudible 104:56]?

Raghu: Pretty much. Excellent question. There is basically a couple of dimension units that are you usable by multiple different properties. Points is something you can use for font sizes. Pixels is something you can use for almost anything with font et cetera. But you are right, generally, I am just going Google CSS font weight and then my favorite.

The first hit whenever you Google for something CSS is going to be W3Schools which is the official organization behind the standards. But I don't like it that much. Better is MDN, the Mozilla Developer Network. I am usually going to hit that link, the MDN result and then it's going to tell us basically summary and description, the default values that it gets, some examples of the syntax. It's usually enough for me.

I love generally just jumping to the examples and seeing them in real world use and just copy stuff over. But there is always going to be a section here called values which will describe what you can. Great question.

The next thing is to make these cards. Each section has this card. You got this second level heading with the background color. Let's start working on that. Let's start with the second level heading. You going to call it...I'm going to cheat and use the tag level selector for now.

We'll do a background color on it of maroon. If we go back and refresh, we've got something that looks like this. Let me bring this over here, bring this over here, for the time being. Now, it's hard to read this text, so let's make the text of the H2s white. We can make the font also Lato and maybe uppercase it. Good enough for now.

Now, here's the thing, when we started down this road...OK. Let's just look at the problem here. If we want to create this border, that line around that whole chunk of content, the heading and the list, the CSS property to do that is called border. I'll show you how to do it.

If I write a style rule...let's just take, for example, an ordered list and put a border on it and do a thin, maroon, solid like this. Now, I get this border around my [inaudible 108:22] list. That's the CSS property to add a border. If you want to, you could also be more specific and say border top. Then just get on the top and you can be border left, right, et cetera.

But if you just say border by itself, it's basically short hand. You're saying make all four borders then maroon and solid. You can also be specific about each one, if you want to, with border top, et cetera. Usually, though, you just use border shorthand just to collapse them all.

But, that's not really what I wanted. In the target, the border goes around. Not just under the list, but also the heading for that section. If I go back to my document here, this is the content that I want to be in this one card. If applying that style to the ul isn't the right thing, it's not big enough.

The ul doesn't contain everything that I want. Similarly, if I tried to apply it to the H2, that's obviously going to omit the ul. So now what? I'm stuck, right? You guys see what the problem is here? I don't have an element that contains all of these content for me to group it together to add the border around it all as a unit.

What we need to start to do is, basically, HTML was way back in the day invented. Basically, for professors to share research papers with one another, which is why you see the elements that you do. There's headings, like a whole hierarchy of headings, paragraphs, lists, ordered lists, tables for numerical tabular data. All great elements are professors writing research papers.

HTML was never intended, actually, to be the language that all these crazy, complicated web applications are written in. It's just been hacked into HTML over the years out of necessity.

Once you break out of this top down, this text content research paper lay out and you start to have more complicated things, like these cards, we're going to have to start to pollute our nice semantic HTML. Every piece of content is tagged with the right tag right now.

Now we're going to have to start to pollute it with generic containers just to give ourselves a hook to hang the styles on that we need basically. OK? Here's the thing. I need to group all of these content into some element so that I can style it. There's no good element for it.

I wish there is an element in HTML called "Card" because that's basically what I want. But that's not an element that exists in HTML because that doesn't have anything to do with research papers. So instead, we're going to use a generic container called "DIV." This is our general purpose element that if nothing else fits the content, we're just going to use the DIV.

Then we're going to apply a class to it, say let's make it a DIV of class card. Now, I can write a style rule here. I've got my DIV class card. Now, let me write this rule for the class card of border thin maroon solid. Since that div now contains all the content that I want, we should get what we want obviously when I refresh. Now that porter goes around all that. Yeah?.

Student: [inaudible 112:14] .

Raghu: It's not and still up here? That's really interesting that you say that though. No, you can't. That's not valid HTML. But it's very interesting that you phrase it that way because in Sublime, there is a shortcut. If I want a div of class card, I can do div that card like this. Then hit tab. Then it'll unfolds it all. It puts the open and close tag on the class equals.

You guessed the shortcut for it to get to the valid syntax from what it really should be. It should just be div that card in the language. But again, HTML, it's a very old and kind of hacked together language, so it's not the optimal syntax. We just have to make do. That works for anything by the way, like you want to paragraph of class is zebra, you tab in it and it'll enfold it for you.

Anyway, we now have our cards by using these generic container called dev. We're going to be using that div a lot to group together related content into little chunks so that we can position ahead or style it or whatever.

Student: [inaudible 113:36] .

Raghu: No, it's just what you would think, like if you've had a text content and to get its paragraph to get some space between that, use the p tag. Yeah, question?

Student: [inaudible 113:56] .

Raghu: That's annoying. Let's see here. Let us look at this now, now I have that, I'm going to add that. All each of these sections now is going to get its own dev.card. Put all these inside that one. It's really nice that I can just reuse that class everywhere that I want this type of a component. I'm going to wrap each H2 and each ul in the div class card.

If my indentation's off, again, I'm going to use that trick to select it all. Edit line, re-indent. Save, go back, refresh. Now I got my borders on all of them but as you say, there's no space between them. The CSS property that you want to modify, basically we want a margin between each one. You can use this CSS property of margin, let's do margin bottom and do say 15 pixels. Now we should get a little bit of reading in between this.

What do you think? It's cool we're defining this card rule and we can now adjust to anything on our page like I could theoretically go in to...I can add the card to class to the sub heading to that small element. Go back and refresh. Now it gets the border around it and the margin too.

You basically define this rule that we can just slap on to any element. This is why defining classes is better than defining tag level selector. The class level selectors are just more flexible. You can add them to any element and add multiple to the same element. Does that make sense?

What do we have left to do? It's a little bit, borders are rounded there, so there's something probably called border radius that you can use, say 20-pixel border radius, gives us that rounding. You can change the font weight to make it lighter, things like that.

We can add some images here if I want to. I'll just add one, imgsource= for my little avatar picture right there. This is actually I'm cheating because I need that image. I don't have it of hand but I'm going to cheat and use my Facebook profile image. You guys know that they are all public, so let me see. I'm going to copy it from over here, the URL from the solution.

If you go to a URL such as this graph@facebook.com, we'll talk a lot more about that that's Facebook API end-point. It's there that's basically the machine version of Facebook for you to build apps on top off. We'll start talking about that next week.

Anyway, if you know your user ID number, you can type it right there and you'll get your current public profile picture or if you do like 2, you get the generic placeholder. I think maybe three, nope. I think maybe four, here we go. All Facebook profile pictures are available. I just cheated and I'm using that here for my image.

I'm going to add a class of avatar on to that image so that I can later go into my CSS and let's write a rule called "order radius" again, set it to 50 percent. If you make the radius 50 percent of it then it just going to be completely round, like that. I'm going fast because it is not crucial, just fun stuff.

But I can add that image there, put in the URL. If I wanted to I can add put some of these, and for all of these guys and then use that too for the placeholder photo. Now, I get my little placeholders here. Anyway, some more practice with CSS. Again, we're never going to grade you guys on visual design of things. This is just so you can get a feel for how to use it in case you want to make your stuff look a little bit nicer.

Let's see. What else is in this target? It's like a slight shadow over here on the cards, which is definitely not very good nowadays, not invoke to use shadows of any kind, but in case you want it and then I'll show you how to do it. The shadow property is really complicated and I don't even try to memorize it.

There's a lot of tools out there that will help you automatically generate the shadow that you want. Here's one. I just googled for "CSS shadow generator" and there's a person that pop up so you can just kind of play with the sliders here. Blurr it. Let's make it beautiful shade of purple and then they're going to produce the code for you here.

Now, this looks very scary. It just has to do with the fact that it's a relatively new property. Different browsers need slightly different versions of it and it generates all three of them for you, so you just copy all of it and just dump it into your rule down here as is.

Now, we're going to have beautiful, subtle accent. We could go on. You get rid of the bullet and things like that, but generally I think we have most of it done. What do you think? What else do you want to know about CSS and styling? Obviously, there's a hundred of properties. You again have to on expandable vocabulary, but I hope that the basic grammar of this language now is pretty clear. You have selector, property, value, property, value.

Student: What are the most common mistakes of [inaudible 120:54] ?

Raghu: That's a wonderful question. I would say most commonly getting the specificity wrong like the priority you'll have multiple properties applying to the same element and it's the one that you don't want that it's being used. Just being clear on the fact that class level selectors take precedents over tag level selectors and then the latest rule wins for things equal specificity.

That can get really hairy when you have...Ultimately, you can easily have five, six, seven extra style sheets linked to the same document, and if some of them uses the same classes they can start to conflict, so that can get a little bit tricky. But fortunately I'm going to show you guys probably next class some approaches, modern approaches to most resolve most of that.

Otherwise I'm not sure that's a great question. I'll think about it, but in general CSS and HTML are pretty forgiving and even if you make a slides and text there, the browser will try to make it work anyway, which is kind of annoying sometimes.

When we get to Ruby, if you make a syntax there you just stop and give you a message that said "Line number 14 you left something out," which I think is actually helpful because it doesn't gloss over mistakes. It forces you to fix them right away, but CSS is more forgiving, which is good and bad. Question?

Student: Aside from adding stuff [inaudible 122:21] , I checked every single thing I added. It doesn't mean that you get more exactly when you check less frequently or you always check.

Raghu: No. Actually I love that habit and keep it up. It's something that most people have to develop because a lot of folks including me when I started is if I have something in my mind, I try to write the whole page at once and then I go back and check it. It would never work on the first try and then you have no idea what's wrong because you write it all once.

In fact, try to increase that habit of sanity check it, every time you change anything make sure you did of what it thought it did so that you can fix things at more granular levels instead of trying to fix the 50 line code at once. Yeah?

Student: [inaudible 123:08] . How do you do that?

Raghu: Real quick. Do I have <ul> already? No. Let's grab the uls and if I'm not wrong its list style is the property of null and that should remove it I think. Yeah, that covered the bullets, but more importantly what I would normally do, you should try to start getting how to doing this CSS remove bullet.

Just Google for it and then check for the MDN link if there is one. In this case, there isn't one. We'll just try the first result and it says, "Remove h1 bullets, set the list style to null." Just trying to get the habit of exploring.

It's a double edge sword. The Internet has a lot of great resources out there, but some of them are confusing, some of them are outdated. If possible, if I assign you guys a homework, I'm never going to ask you to do something that I haven't either shown you in class or I provided you that information and the instructions or something.

If it all possible, try to figure out a solution with what I've already shown you and then as a last resort, Google. Actually, second ask a question on Piatsa and as the last resort, go to Google. Now, it's kind of weird that there's transparency here. We'll have to set the background color of the card to white to make it solid maybe. There you go. All right. Any questions? We are going to move onto the next thing.

Now that we have a taste of CSS and getting these cotton colors and shadows and [inaudible 125:06] and things. The next big thing we have to tackle is layout. Again, HTML was invented for research papers, text, top down linear format with headings and then paragraphs and stuff.

But with modern-day web apps, that is never what anything ever looks like, right? It's not just top down, even a newspaper is not top down. You have layouts with components side by side and like [inaudible 125:33] bars that go horizontally and all kinds of stuff. Let's start to think about how to achieve this.

Its again, because it wasn't the original intent of HTML, it is not as straightforward as you would think, to start to lay things out in a complicated manner. But let me introduce to you, actually, another element known as "Table." I wrote about this. I'm going back to GitHub course page, back to the page for this project because I wrote a little bit about what I am going to talk about in the instructions. It is a reference for you guys and I am just going to talk through the reference.

The next thing we are going to work on is positioning and there is a section in here where I talk about HTML tables. Now, tables were added to the language initially for professors to include tabular numerical data in their research papers. They look kind of like this.

You will have an opening tag and then you will have a TR element, "Table Row." For each row in your table you will have a TR element. Then within each row, you are going to have either THs or TDs for each cell. This code here is going to produce a table with three rows, each row is going to have two cells in it and it looks like this. These are bold because they are table heading instead of table data. "TD" is table data, "TH" is table heading, "TR" is table row. What do you think? So far so good?

Now it says, the thing to keep in mind about tables. Every piece of data must reside within a cell. A TD, most of the time, maybe once in a while a TH. That means like between these TRs right here, you can't add any content. It's going to break the page or it won't show up. At best it won't show up if you try to add any content between TRs.

Every piece of content has to be inside of a cell. A TD, or a TH. OK? Every TD or TH must reside within a row, so you can't have TDs orphan, they must always be inside of a row. Every TR must have the same number of cells, which makes sense in a rectangular table, right? Those are the basics of tables.

Now, despite this last rule, you can merge cells, so let's inspect this here. Now, again I have three rows, these two rows have two cells each. This one appears to only have one cell, violating that rule number 3, but I have this attribute "call span 2" on it which is saying "take this cell and make it occupy the space of two."

Therefore, I actually haven't violated the rule and now the table looks like this. I can get that all on one screen. What do you think? Does that make sense? Anything fuzzy about that? I still have to have two cells in here and I have because of the call span. If I took the call span out then my table would be out of whack because that first row would have no cells.

Student: [inaudible 129:12] .

Raghu: You can, what's it and then...?

Student: [inaudible 129:18] .

Raghu: No, unfortunately, you are going to have to type it out. But don't worry. This week and next week, we are writing HTML by hand because we have to learn how to teach the browser how to present things.

But pretty soon, our goal is to get to Ruby on Rails, where we are going to teach the computer how to write the HTML for us and we will be able to automate the writing of large amounts of HTML. We are not going to actually be writing, we are going to be writing like templates but then the computer is going to be writing these huge documents with big data sets.

You can also merge cells vertically if you need to like this, with the row span. So now, even though it looks like this row is short a cell, this first one is going to span down to make things add up right.

You might be wondering why I am talking about it so much, and here is the thing. We are going to try to achieve...I'm going to go back close some stuff, we are going to move to the next section, so I'm going to close everything up so I don't confuse myself in Chrome with too many tabs. Now we are going to move to part three next.

I am going to put positioning start in Sublime. In Chrome, I'm going to open up section three, positioning start and in a second tab we are going to open up positioning target. Basically, the starting point is what we just completed, getting the styles going on and the target is to get to something like this, where we have these cards sitting side by side.

Now, there is a lot of ways to achieve this in CSS and I am going to show you one of many approaches, just because we don't have time to delve into the details of everything. I'm going to show you the terrible, hacky solution that developers used in the early days of the web which we should never do, but conceptually, it is helpful to understand the history a little bit. Then I'll show you the modern solution, either today or the first thing next class.

What I want is I'm going to hijack the table element which is supposed to be for presenting numerical tabular data. I'm going to hijack it. I'm going to make the whole page a table. So right out, after the body opening tag, I'm going to have my table opening tag and right before the body closing tag, I'm going to have my table closing tag. So this table is now going to contain all of my content and I'm going to use rows and cells to achieve this kind of side-by-side layout.

Let's do one together, and then I'm going to assign you a challenge to work on, on your own, to practice a little bit. We are starting here and we want to get to here. Let's go into the code for positioning start.

There is a whole bunch of CSS right in the file here, unfortunately. I should have put it into an external style sheet but I didn't. Just ignore all that and lets go down here and I'm going to do what I said where right inside the body I'm going to open up my table element. Let's just actually close it off right now and we'll move content into it from below.

What I want, when I think about this target, if I'm considering this entire thing one table, I think I have maybe three rows. The first row is for the logo image, the second row is for the heading and the third row is for the cards. Then I need three cells, obviously, in this row and just one cell each in the first two rows. I think that is one approach for this.

Let's say something like I want three rows and then this is going to be, I'm going to have one cell up here and that's just going to be for this image, I'm going to move that guy up and then I'm going to have another cell in here for this heading. I'm going to move that up, and then I'm just going to stop there for a minute and go refresh my page and see how far I got. Again, always work in tiny little steps and make sure things are working the way you think they are.

I'm going to bring this over here, make this a little bit easier to see hopefully, and refresh mine. OK, so not much has changed but these two are now inside their own table rows at the top. Now, in this third row, I'm going to want to have three cells and I want to move each of these cards into one of those cells.

This is going to be, can get a little bit tedious, but I'm going to want to copy that, paste it into the first cell, go down get the second card, cut it out, paste it into the second cell, cut out the third card and paste it into that last cell. Just in case my indentation got messed up, I'm going to select the whole page, "Edit", "Select All" or "Command A" and then I'm going to "Edit Line Re-indent" just to make sure that indentation is good. "Save" and "Refresh".

Now I have something that looks like this, over here. It is side by side, it doesn't look great yet, but it is side by side. However, I've broken, when I highlight, you can see I broke the rule. Every row should have the same number of cells. Right? Because the first two rows only have one cell each. So how can I resolve this?

Let's go back into this code here and on these two cells we can add a call span of three. The cells in the first two rows, if I say "call span three" then I am merging it across the whole table. Does that make sense, the whole call span merging thing? It won't look very different but we are now, we have a valid table because they all have the same number of cells.

There is our table, so far. Questions about this approach? I have made the whole page a table, I broke my content up into rows and then cells within the row and then I used call span to take care of any inconsistencies in the number of cells per row. You with me so far? Anybody lost?

Student: Can you please scroll down a little bit?

Raghu: Sure. After this, it gets really long.

Student: Yeah, but so you just copy paste [inaudible 136:37] .

Raghu: Mm-hmm, each div class card from the opening div to the closing div I just copied, cut the whole thing and dumped it into TD.

Student: [inaudible 136:49] .

Raghu: Mm-hmm, right, because we want each card in its own table cell, right? What we can do now, let's real quick, I can say table, let's set the width of it to make it 100 percent just to make that table occupy the whole browser window like that. I just added that quick and dirty there, table with 100 percent. Percent is a unit you can use in addition to pixels and it will be relative to its parent, percent of its parent.

The last thing is, now we have got our side by side layout close to what we want but the alignment, table cells, by default, will vertically center things and we want it to be not like that. Let's add a rule for TDs to vertical align to top instead of middle, which is the default.

These two style rules should get us to the rest of the way. After we put all the content into our table structure, these two tweaks to these default styles of tables, should get us to our target. What do you think? Does that approach make sense?

Figure out if you had to cram that whole page, the design that you want, the layout that you want, if you were going to make it a table, figure out your rows, figure out your cells. I kind of like to make that skeleton for myself at the top with the table and then I will go paste my content into the cell that it belongs in. I will give you some practice.

Let's look at the next section, Section Two, "Landing." I am going to close this stuff. Any questions before we close this up? OK. Remember there are always solutions you can look at. The first few homework's you are going to have all the solutions because I am giving you targets.

You can always look at the solutions but don't do that right away. Struggle with it for a while to create the questions, the gaps in your mind for the answers to fit. Then if you later on peek at it, it's OK.

But let's look at Part Two now. There is a landing table with "Start." So I am going to open back here, we are done with "Roster" now we are in Section Two, "Landing with Table." Open the starting point, open another tab and inside there, there is a folder called, "Solution." So, inside that Solution Folder you will find "Landing with Target." Open that with your second tab. Oops, I didn't open that. First tab, I have got "Start" here on the left.

This is supposed to be a basic landing page. You have got like a splash heading at the top that spans the full width. Then you have your blurbs, one-third each. Then you have one-third, two-thirds. Now when I say 33 percent, I don't mean to fit the pixels on the screen, I am just saying I want this chunk of content to occupy one-third of the columns in your layout. Does that make sense? It's just, the browser calculates the actual width based on the content.

What I want you to do is basically starting from the raw content over here which is all just top down without any lay-out. By the way if you look at the code for this, here is the starting point. There is an external style sheet here where I said "border: thin red solid;" with the star selector. That star selector means every element on the page. I just added this thin red border just to make it easy to see the size of everything as you are working. After you are done you can take that off to get rid of it.

I want you to try to create this kind of skeleton here, layout, and move all of this content in. However you do it is fine, but turn this into this using a table. Is it clear what your task is? Any questions on the job? OK, so take a few minutes and then we will talk about it and then we will call it a day. I will be walking around. Ask lots of questions as we are walking around.

### Middle

So you are probably going to want to start by opening up a table in here and then set it up. You got this. We are just going to start. All right guys, so I am going to walk through this and then we are going to call it a day.

So I am going to start one by one, moving my content up into this table. So let's see. I am going to do a td here and then move in the heading, the title and heading. I am going to check out how it looks. OK, so I have my first row for that first heading. Currently my table is a one column table.

Now I am going to add my second row for the blurbs, which I know requires three cells. I am going to go ahead and add those here. Then move my content up. It is a little bit tedious. Add that. Bring it up here. Add this, bring it into here. Add this, bring it into here.

So now my table has two rows. Oh, I messed up. I messed up and nobody yelled at me. This needs to have a closing tr tag for that first row. Then open the second row. Then I have an extraneous closing tag. This notation is all messed up so I am going to highlight it and edit line, re-indent.

OK, so now I have a table. By the way, you can fold elements with the little arrows on the side here to kind of just get a higher level view. So I have a table with two rows. This first row is just that heading and the second row is the three cells for the blurbs. So far so good?

But of course this is now going to be out of whack because the first row needs to have a colspan of 3 in order to make everything add up, right? Because the second row has three cells in it. Now my little table looks like this. So far so good?

Next row. The target, the next row is going to be a one-third blurb and then a two-thirds screenshot. So let me add my next row in here, tr, td, two cells. One-third is the blurb and one-third is the screen shot. Now the colspan is on this one, right? td for the blurb is one-third so that is fine, but I need a colspan of 2 to make this add up to three in that row. So far so good?

Similarly I am just going to copy this. No I won't, I will make another one. For the next screenshot, and this time the screenshot is on the left, so that is here and this is the two-third. Here is the blurb for it. Paste that in. OK. Now I have one, two, three, four rows in my table. The heading, this is the blurbs, this is the first screen shot row and this is the second screen shot row.

Let's check this out. So I have got my heading, my blurbs, first screen shot row and second screen shot row. Pretty good? Just need to get these testimonials and footer in and I am done. So let's go ahead and add another row, fifth row for the testimonials. So now it is td, I need four, there are four testimonials. Move them up. Trying to go fast, but slow me down.

All right. Now I have my four testimonials. Check it out over here, but now the problem is this row has four things in it which breaks the rest of the table. Right? So do I need a colspan on this? On all of them actually, right? What should I set the colspan on this to make it...?

Student: [inaudible 147:04] .

Raghu: Yeah, so the sum of the number of cells must be the same for all rows. So these four should be in theory, be like 0.75, but we can't do that. You can't have fractional colspans, so I am out of luck. We broke the Internet.

No, the solution is, somebody mentioned it. When you are in this situation and you have a different number of cells in each row, you are going to have to think of the table as having the least common multiple number of columns. So in this case I have to resolve a row with three and a row with four.

What I am going to say is OK, this table actually has twelve columns total. That first row has to span across all twelve. Each of these td's, how many should these be? If the total column is twelve, they are 33 percent, it is going to be four each. Similarly this is going to be a four. Now this needs to be an eight, the two-thirds. Eight. Four. Now finally I can do for each of these, three, one-fourth of twelve. Yeah?

That is going to now give us now a nice neat table here and everything works. Finally, one last row, twelve for the footer and that is it. I think now we are at parity. What do you think? Make sense? Beautiful.

Now we will never ever do this again. Just kidding, you will do this for your homework. But in the real world we will never do it again because if you look at it closely, even though these are occupying the right number of columns they are still not exactly the same width, right? Can you see that?

That is just how, like tables, the width of the cells are calculated by the browser based on the content of the cells when another place in the table and it is hard to precisely control how things are sized. This is how developers in the early days of the web, like back when they were using Times New Roman and stuff, they used this method for layout but we are not going to do it anymore.

However, the approach, the modern approach, is conceptually exactly the same. So I just want you to practice with the approach of thinking about when you have a layout you are going to sketch up your app ideas on paper and you are going to look at that and say OK, what are the rows? How do I break up this page into rows and then cells? Because that is how the modern approach works too. It is just that we don't use the table element anymore, we use divs and we are going to use CSS to control stuff, but that approach is the same.

What was I going to say? The fact that we stumbled upon a twelve column table here, not a coincidence. That is basically what everybody uses on every website because it divides so well. You can easily do halves, thirds, fourths. If you go now and look around the web, keep an eye out for it. You will notice that most layouts will fall into a twelve-column pattern. Thirds, fourths, halves, mostly or two-thirds or three-fourths, et cetera. That is what we are going to be using from here on out.

There will be some homework. Homework will be posted by tomorrow morning. I will send out an email this week with detailed instructions on how to do everything but the assignment will appear in Canvas on the left under assignments, which is currently grayed out because there are none.

But anyway I will send out an email with details, there will be a video tutorial walking you through the first homework just so you get comfortable with the submission mechanism via GitHub. Other than that, do you have any last questions? Those of you on the fence about taking this class or not? What do you want to know? Anything I can tell you? None of you are on the fence, obviously, but If you were? No questions?

Student: Is it possible [inaudible 151:37] .

Raghu: Great question. We will talk about that and like deployment related issues, like OK now we built this now how to we share with the world. We will talk about a lot of that in weeks nine and ten, but make sure you ask me and remind me if there are specific things I don't touch on.

Student: Is there a time in the course where you talk about what Agile is or [inaudible 152:14] ?

Raghu: Great question. So we are not going to get into it in a lot of detail. I hope that just the process, like you are going to witness, the process of how Agile Software Development works. We are not going to have time to talk about like here is how to use "JIRA" for Agile which is a specific software, like a project management tool.

### Bottom

We are not going to have time to talk about any specific tool, but I do want you guys to kind of absorb by osmosis, the Agile Software Development philosophy, like build one tiny feature first and then get user feedback and then build on top of it, rather than trying to implement five complicated features all at once. So that approach I hope you absorb. We are not going to talk about specific tools. All right guys, great work. See you next time.)
    ]

    @doc = Kramdown::Document.new(
      chapter_content,
      auto_ids: true,
      input: "GFM",
      no_intra_emphasis: true,
      tables: true,
      fenced_code_blocks: true,
      strikethrough: true,
      superscript: true,
      syntax_highlighter: "rouge",
      footnotes: true,
      highlight: true,
      lax_spacing: true,
    )
  end
end
