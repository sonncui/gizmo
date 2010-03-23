page-selecta
============

### DRY up your cucumber steps with a simple and easy to use page framework. ###

page-selecta is a simple page model testing framework used and sponsored by [realestate.com.au](http://www.realestate.com.au). The aim of the project is to DRY up testing assertions by abstracting code that defines your page, resulting in a consistent, easy to maintain test suite.

**this project is a work in progress, and not yet ready to be used for its intended purpose!**


## Usage ##

see [this gist](http://gist.github.com/339570) for some code examples

**for cucumber:**

* write your features just like you usually would
* require 'page-selecta' and add the PageSelecta::Helpers to the World
* generate your page mixins and fill them out with your page selectors
* use the page model when writing your steps


**for rspec:**

* require 'page-selecta' in your spec_helper and include PageSelecta::Helpers methods
* generate your page mixins and fill them out with your page selectors
* use the page model when writing your specs

## Note on Patches/Pull Requests ##
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright ##

Copyright (c) 2010 Luke Cunningham. See LICENSE for details.
