## Installation

1. Create a fork of this repository.
2. Make sure [asdf](https://github.com/asdf-vm/asdf-ruby) is installed as well as ruby plugin
3. In root directory of project, install ruby using `asdf install`
4. Install project dependencies using `bundle install`

## Instructions

Lorem ipsum is a placeholder text used to show how a block of text would look like on something without needing content. It is usually a random combination of words that have no meaning. For this exercise, create a ruby gem that will generate a simple version of Lorem ipsum. Refer to this [guide](https://guides.rubygems.org/make-your-own-gem/) for an idea of the structure of gems.

## Basic Requirements

Create a method that will take in a number and return a string with random words equal to the number passed. You can use a list of any words to generate.

Example list:

```ruby
["lorem", "ipsum", "dolor", "sit", "amet", "consectetur", "adipiscing", "elit"]
```

Let's say we want 20 words. An example output can look like this:

```ruby
"Sit dolor elit sit sit sit elit dolor amet ipsum amet ipsum dolor Lorem Lorem adipiscing sit elit consectetur adipiscing."
```

### Multiple sentences

Create a separate method that will take in a number and return generated sentences equal to that number.  It's up to you how long the sentences should be. Apply proper punctuation and capitalization.

### Multiple paragraphs

Create another method that will take in a number and return generated paragraphs equal to that number.

### Dynamic List

Allow user to change the words used in each method by passing an optional argument.

## Gem Installation

1. Build the gem using `gem build ruby_gems_exercise.gemspec`
2. Install gem using `gem install ./ruby_gems_exercise-0.0.0.gem`

## Running in console

1. Open `irb`
2. Import file to use in console e.g. `require "ruby_gems_exercise"`.
3. You should be able to use the class in the console.

## Run specs

Run the specs using `rspec`. Make them pass.

## Submission

Create a Pull Request directed to your fork of this repository then provide a link to the PR to the facilitators.
