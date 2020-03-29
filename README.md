# Welcome
This repository holds the code for CodeUp Manchester, part of CodeUp UK.

# CodeUp
CodeUp is the adult version of Code Club, providing free and friendly adult coding tuition. 
For more information please see [the main web site](http://codeup.org.uk/).

# Our Event
We run the event monthly and manage it all through 
[our Meetup group](https://www.meetup.com/CodeUpManchester/).
It's all free, so if you're in the area please come along!

# Using This Repository
Clone the repository to your local machine and edit the files in the root folder, then use
Jekyll to recombine the code into full pages. These new full pages will be stored in \_site
and are overwritten every time new pages are created, so don't edit anything directly as
your work will  be lost.

## Using Jekyll
Jekyll is a RubyGem that runs on any machine, but has a few prerequisites.
* First, you'll need Ruby: https://rubyinstaller.org/
* Then RubyGems: https://rubygems.org/pages/download
* Then you should be able to install Jekyll from your command line:
** Type `gem install bundler jekyll`
** Read more at https://jekyllrb.com/

Once you have Jekyll on your local machine, change directory into the repository folder
and run `jekyll build`.
