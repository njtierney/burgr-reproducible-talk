# Reproducibility: Now you can, too! And you! And you! And You! ...
Nicholas Tierney  
18 August 2016  

OK, let's talk about writing a paper.

You've just finished writing a paper, you are ready to send it to your collaborators for their perusal.

The paper is about modelling student results in one school in Australia.

It's been a long process. You've been writing your analysis in this thing called "R". Let's recap some of the tricky parts.

## The data

- The data was in an excel workbook with 3 tabs.
- It was "helpfully pre-aggregated", but you managed to unfuck, I mean unaggregate it.
- There were only 100 students, and 5 variables
- You needed to comb through each observation and remove strange characters
- make some new summaries

You didn't feel so bad about needing to comb through 100 rows.

After all, you'd only need to do it once, right?

Man, you are glad you never have to do that again.

## The paper

You wrote your document in Word, because that's what your other collaborator used.

## The analysis

You're really happy, you've written all your code in 1 R script that does the following:

- Builds a linear model
- Prints out the summary (which you copy and paste into word)
- Creates a bunch of plots that you used to look at your model (which you manually saved and inserted into word)

## The internal reviewing process

It's a short paper, you're really happy with it.

You send it to your collaborator, and go and get a burger to celebrate.

It's one of those big ones held together with a steak knife:

![](http://burgerdays.com/wp-content/uploads/2012/08/strasburgerwhole.jpg)

You get a notification. It's your collaborator. They're writing about your paper. They say:

> Wow, great job! I've just managed to get ethical approval to post the data online, and we also have another 10 schools to add - so we've got another 1000 data points! Do you think you could just redo the plots and the tables and see if anything changes?

*funny image conveying large amounts of rage*

You imagine yourself redoing all of the code, to build the models, copy the tables, insert the figures and you start to feel cracks appear, you feel so damn tired, you start to wonder if -

Another email comes in:

> Sorry, forgot to attach the data. It's in the same format as last time, that is fine, right? Didn't seem to cause you a problem last time!

You lose your mind and go into a murderous rage, letting loose on the students in the university armed with nothing but a steak knife.

Alongside the phrase *going postal*, they now add the phrase *it's reproducible*.

So let's pause for a minute before I take this story further.

What the fuck?

It's 2016.

We've discovered gravity waves, put people into space regularly, catch pokémon on our phones, have conversations with people on the other side of the world, and find photos of cats doing the cutest darn things.

Is there a better way?

The answer is yes.

The answer, is rmarkdown.

# rmarkdown

Let's set the wayback machine for 3 months ago, when this all started.

Here's what happens.

You take your R code.

You put it into chunks.

You have your step that reads in your data.

It cleans it.

At first it hurts, and then it becomes addictive and interesting. Like heroin, but it's data science. Data heroin. Heroin science? You're not sure what to call it, but you like it.

You've written your introduction, you're really clear on what your paper is going to achieve.

You run your model again - you have the output, and then you run some code that makes the table for you.

You have some code that creates the plots.

You've got all these chunks, they all do different things.

And then make like Sauran, and bind them together for a single united purpose.

It's your paper. It's knitted together. The table is there. The figures are where you want them.

It's one document of code.

It's in HTML.

It's in PDF.

And:

It's in word.

OK. So you're back in the cafeteria, holding a steak knife

Your collaborator adds another 1000 rows to your dataset.

You don't go into a murderous rage.

You take 10 minutes. You eyeball the data. Check it reads in OK.

You knit the document together.

You get changes in the tables and plots.

It's all in one document. It's rmarkdown. It's great. You send the paper through to your collaborator. You go to eat another burger but it's only been 1 hour so you just make a cup of tea instead.

Fast track 3 months - your paper has gone through a fast review process, the reviewers were all able to recreate your results, they're impressed.

You put all the code and data onto this thing called GitHub, where people can access it. You post about your accomplishment on twitter, and then you forget about it.

But that day, someone reads your paper. They like what they see. They get the code and the data from github.

They reproduce your results.

Then they add a bit more - they try out this new statistical model on your data.

They get some extra insights, glean some new information, and then publish a paper based on your research.

You get cited.

You celebrate, you eat a burger.

And this whole process, it is reproducible - you can do it too.

Also, it's free. I think I forgot to mention that.
