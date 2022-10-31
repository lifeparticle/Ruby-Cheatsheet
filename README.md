![ruby](https://user-images.githubusercontent.com/1612112/74456286-b1bcd100-4eda-11ea-9738-7e0a27199021.png)

<p align="center">
   <a href="https://www.ruby-lang.org">
      <img alt="Ruby" src="https://cdn.emojidex.com/emoji/mdpi/Ruby.png"/>
   </a>
   <a href="https://github.com/lifeparticle/Ruby-Cheatsheet/issues">
      <img alt="contributions welcome" src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat"/>
   </a>
   <a href="https://github.com/lifeparticle/Ruby-Cheatsheet/actions/workflows/python-app.yml">
      <img alt="link" src="https://github.com/lifeparticle/Ruby-Cheatsheet/actions/workflows/python-app.yml/badge.svg"/>
   </a>
</p>

# Table of Contents

- [Table of Contents](#table-of-contents)
- [The latest news from ruby-lang.org](#the-latest-news-from-ruby-langorg)
- [Installation](#installation)
  * [How to install Ruby](#how-to-install-ruby)
    + [Debian, Ubuntu](#debian-ubuntu)
    + [Windows Package Manager](#windows-package-manager)
    + [macOS](#macos)
    + [Docker](#docker)
    + [Install rbenv with package managers](#install-rbenv-with-package-managers)
      - [macOS](#macos-1)
      - [Debian, ubuntu and other derivatives](#debian-ubuntu-and-other-derivatives)
    + [Install ruby with rbenv](#install-ruby-with-rbenv)
    + [Install ruby with RVM](#install-ruby-with-rvm)
  * [How to install ruby gem manager, bundler gem](#how-to-install-ruby-gem-manager-bundler-gem)
  * [What is a Gemfile and Gemfile.lock](#what-is-a-gemfile-and-gemfilelock)
  * [How to install a specific version of a particular ruby gem](#how-to-install-a-specific-version-of-a-particular-ruby-gem)
  * [How to update a single gem using Bundler](#how-to-update-a-single-gem-using-bundler)
  * [How to update every gem in the Gemfile using Bundler](#how-to-update-every-gem-in-the-gemfile-using-bundler)
- [Introduction](#introduction)
- [Reserved Words](#reserved-words)
- [Comment](#comment)
- [Operators](#operators)
  * [Usage](#usage)
  * [Operator Precedence Table](#operator-precedence-table)
- [Variables and Scope](#variables-and-scope)
  * [Local Variable](#local-variable)
  * [Instance Variable](#instance-variable)
  * [Class Variable](#class-variable)
  * [Global Variable](#global-variable)
  * [Constant Variable](#constant-variable)
  * [Pseudo variables](#pseudo-variables)
  * [Pre-defined variables](#pre-defined-variables)
  * [Option variables](#option-variables)
  * [Pre-defined global constants](#pre-defined-global-constants)
  * [How to check scope of variables](#how-to-check-scope-of-variables)
- [Conditional structures](#conditional-structures)
  * [if Modifier](#if-modifier)
  * [If elsif else Statement](#if-elsif-else-statement)
  * [unless Statement](#unless-statement)
  * [Case Statement](#case-statement)
- [Data types](#data-types)
  * [How to check the data type](#how-to-check-the-data-type)
- [Symbol](#symbol)
- [String](#string)
  * [String Interpolation](#string-interpolation)
  * [How to Extract a Substring](#how-to-extract-a-substring)
  * [How to convert String to lower or upper case](#how-to-convert-string-to-lower-or-upper-case)
  * [Helpful methods](#helpful-methods)
- [Integer](#integer)
  * [Helpful methods](#helpful-methods-1)
- [Range](#range)
  * [Helpful methods](#helpful-methods-2)
  * [How to use step with Range](#how-to-use-step-with-range)
- [Methods](#methods)
  * [How to declare a method](#how-to-declare-a-method)
  * [How to call a method](#how-to-call-a-method)
  * [How to define a default value for a method parameter](#how-to-define-a-default-value-for-a-method-parameter)
  * [How to use another parameter for the default value](#how-to-use-another-parameter-for-the-default-value)
  * [How to pass variable length argument to a method parameter](#how-to-pass-variable-length-argument-to-a-method-parameter)
  * [Modify object](#modify-object)
  * [Boolean method](#boolean-method)
  * [Class method](#class-method)
- [Blocks](#blocks)
  * [How to check if a block is given](#how-to-check-if-a-block-is-given)
- [Procs](#procs)
- [Lambdas](#lambdas)
- [Blocks VS Procs VS Lambdas](#blocks-vs-procs-vs-lambdas)
- [Array](#array)
  * [How to iterate an Array](#how-to-iterate-an-array)
    + [each](#each)
    + [each_with_index](#each_with_index)
    + [each_with_object](#each_with_object)
    + [each_index](#each_index)
    + [map](#map)
    + [collect](#collect)
    + [while](#while)
    + [do while](#do-while)
    + [for](#for)
    + [until](#until)
    + [times](#times)
    + [upto](#upto)
    + [downto](#downto)
    + [step](#step)
    + [inject](#inject)
    + [reduce](#reduce)
    + [detect](#detect)
    + [find](#find)
    + [select](#select)
    + [reject](#reject)
    + [keep_if](#keep_if)
    + [delete_if](#delete_if)
    + [drop_while](#drop_while)
    + [reverse_each](#reverse_each)
  * [Boolean Enumerable methods](#boolean-enumerable-methods)
    + [all?](#all)
    + [any?](#any)
    + [one?](#one)
    + [none?](#none)
    + [empty?](#empty)
  * [Methods for combining](#methods-for-combining)
    + [&](#&)
    + [+](#+)
    + [-](#-)
    + [union](#union)
    + [difference](#difference)
    + [product](#product)
  * [How to check if a value exists in an Array (`include?`)](#how-to-check-if-a-value-exists-in-an-array-include)
  * [How to get array size](#how-to-get-array-size)
  * [How to clear an Array](#how-to-clear-an-array)
  * [How to get the first element of an Array](#how-to-get-the-first-element-of-an-array)
  * [How to get the last element of an Array](#how-to-get-the-last-element-of-an-array)
  * [How to merge two Arrays](#how-to-merge-two-arrays)
  * [How to sort an Array](#how-to-sort-an-array)
  * [How to get the maximum from an Array](#how-to-get-the-maximum-from-an-array)
  * [How to get Array elements using a range](#how-to-get-array-elements-using-a-range)
  * [How to get first n elements of an Array](#how-to-get-first-n-elements-of-an-array)
  * [How to access an element](#how-to-access-an-element)
  * [How to remove one or more elements of an Array](#how-to-remove-one-or-more-elements-of-an-array)
  * [How to remove duplicate elements from an Array](#how-to-remove-duplicate-elements-from-an-array)
- [Hash](#hash)
  * [How to group by count](#how-to-group-by-count)
  * [What's the difference between Hash.new(0) and {}](#whats-the-difference-between-hashnew0-and-)
  * [How to sort a Hash](#how-to-sort-a-hash)
  * [How to get the maximum from a Hash](#how-to-get-the-maximum-from-a-hash)
  * [Hash Built-in Methods](#hash-built-in-methods)
- [Loop](#loop)
  * [while loop](#while-loop)
  * [for loop](#for-loop)
  * [do..while Loop](#dowhile-loop)
  * [until Loop](#until-loop)
  * [How to break out from loop](#how-to-break-out-from-loop)
  * [How to skip inside a loop](#how-to-skip-inside-a-loop)
  * [How to repeat the current iteration](#how-to-repeat-the-current-iteration)
  * [How to restart a loop](#how-to-restart-a-loop)
- [Classes](#classes)
  * [How to inherit a class](#how-to-inherit-a-class)
  * [How to check instance type](#how-to-check-instance-type)
  * [Print all method names of a class](#print-all-method-names-of-a-class)
  * [Check if a Class has a particular method](#check-if-a-class-has-a-particular-method)
- [Modules](#modules)
- [Operator Overloading](#operator-overloading)
- [Exception Handling](#exception-handling)
- [Regular expression](#regular-expression)
- [Miscellaneous](#miscellaneous)
  * [How to generate random number](#how-to-generate-random-number)
  * [Check the syntax of a Ruby file](#check-the-syntax-of-a-ruby-file)
  * [Concatenate String in a loop](#concatenate-string-in-a-loop)
  * [CamelCase String split](#camelcase-string-split)
  * [Ruby scripts](#ruby-scripts)
- [Platforms that supports Ruby](#platforms-that-supports-ruby)
- [Ruby frameworks](#ruby-frameworks)
- [My Ruby Articles](#my-ruby-articles)
- [Books and other resources](#books-and-other-resources)
- [Bug Reports and Feature Requests](#bug-reports-and-feature-requests)
- [Contribution Guidelines](#contribution-guidelines)
- [Author](#author)
- [License](#license)

# The latest news from ruby-lang.org

<!-- news starts -->
* [Ruby 3.2.0 Preview 2 Released](https://www.ruby-lang.org/en/news/2022/09/09/ruby-3-2-0-preview2-released/) <br/> <sub>2022-09-09 00:00:00</sub>
* [Ruby 3.1.2 Released](https://www.ruby-lang.org/en/news/2022/04/12/ruby-3-1-2-released/) <br/> <sub>2022-04-12 12:00:00</sub>
* [Ruby 3.0.4 Released](https://www.ruby-lang.org/en/news/2022/04/12/ruby-3-0-4-released/) <br/> <sub>2022-04-12 12:00:00</sub>
* [Ruby 2.7.6 Released](https://www.ruby-lang.org/en/news/2022/04/12/ruby-2-7-6-released/) <br/> <sub>2022-04-12 12:00:00</sub>
* [Ruby 2.6.10 Released](https://www.ruby-lang.org/en/news/2022/04/12/ruby-2-6-10-released/) <br/> <sub>2022-04-12 12:00:00</sub>
* [CVE-2022-28738: Double free in Regexp compilation](https://www.ruby-lang.org/en/news/2022/04/12/double-free-in-regexp-compilation-cve-2022-28738/) <br/> <sub>2022-04-12 12:00:00</sub>
* [CVE-2022-28739: Buffer overrun in String-to-Float conversion](https://www.ruby-lang.org/en/news/2022/04/12/buffer-overrun-in-string-to-float-cve-2022-28739/) <br/> <sub>2022-04-12 12:00:00</sub>
* [Ruby 3.2.0 Preview 1 Released](https://www.ruby-lang.org/en/news/2022/04/03/ruby-3-2-0-preview1-released/) <br/> <sub>2022-04-03 00:00:00</sub>
* [Ruby 3.1.1 Released](https://www.ruby-lang.org/en/news/2022/02/18/ruby-3-1-1-released/) <br/> <sub>2022-02-18 12:00:00</sub>
* [Ruby 3.1.0 Released](https://www.ruby-lang.org/en/news/2021/12/25/ruby-3-1-0-released/) <br/> <sub>2021-12-25 00:00:00</sub>
<!-- news ends -->

# Installation

## How to install Ruby

First things first, make sure you have [Ruby](https://www.ruby-lang.org/en/documentation/installation/) installed on your machine.

### Debian, Ubuntu

Debian GNU/Linux and Ubuntu use the apt package manager. You can use it like this:

```shell
$ sudo apt-get install ruby-full
```

### Windows Package Manager

On Windows, you can use the [Windows Package Manager CLI](https://github.com/microsoft/winget-cli) to install Ruby:

```shell
> winget install RubyInstallerTeam.Ruby
```

### macOS

Homebrew (macOS)
Ruby versions 2.0 and above are included by default in macOS releases since at least El Capitan (10.11).

[Homebrew](https://brew.sh/) is a commonly used package manager on macOS. Installing Ruby using Homebrew is easy:

```shell
$ brew install ruby
```

This should install the latest Ruby version.


List all the installed Ruby versions:

```shell
which -a ruby
# /usr/bin/ruby
```

Get information about currently used Ruby:

```shell
ruby -v
# ruby 2.6.3p62 (2019-04-16 revision 67580) [universal.arm64e-darwin20]
gem env
```

### Docker

In case you don’t want to install Ruby natively, you can use [docker](https://docs.docker.com/engine/install/).

```shell
docker run -it --rm ruby:latest
# check which version of Ruby you're running
RUBY_VERSION
```

Run a specific version of Ruby.

```shell
docker run -it --rm ruby:2.7
# check which version of Ruby you're running
RUBY_VERSION
```

### Install rbenv with package managers

rbenv is a version manager tool for the Ruby programming language on Unix-like systems.
It is useful for switching between multiple Ruby versions on the same machine and for
ensuring that each project you are working on always runs on the correct Ruby version.

[rbenv](https://github.com/rbenv/rbenv#readme)

#### macOS

```shell
brew install rbenv ruby-build
```

#### Debian, ubuntu and other derivatives

```shell
sudo apt install rbenv
```

Load rbenv 

```shell
# run this and follow the printed instructions:
rbenv init
```

Restart terminal for the changes to take effect.

### Install ruby with rbenv

```shell
# list latest stable versions:
rbenv install -l

# list all local versions:
rbenv install -L

# install a Ruby version:
rbenv install 3.1.2

rbenv global 3.1.2   # set the default Ruby version for this machine
# or:
rbenv local 3.1.2    # set the Ruby version for this directory
rbenv local --unset

rbenv version # Displays the currently active Ruby version
=> 1.9.3-p327 (set by /Users/sam/.rbenv/version)
```

### Install ruby with RVM

RVM allows you to install and manage multiple installations of Ruby on your system.
It can also manage different gemsets. It is available for macOS, Linux, or other UNIX-like operating systems.

[RVM](https://www.ruby-lang.org/en/documentation/installation/#rvm)

```shell
\curl -sSL https://get.rvm.io | bash -s stable
rvm list
rvm install 3.0.1
rvm list
rvm use 3.0.1
```

## How to install ruby gem manager, bundler gem

```
# access the bash for executing the following commands
docker run -it --rm ruby:latest bash
```

```
gem install bundler
bundle -v
gem update bundler
gem uninstall bundler
```

[Further reading](https://bundler.io/)

## What is a Gemfile and Gemfile.lock

Gemfile is a configuration file for Bundler (also a gem), which contains a list of gems for your project (dependencies).

[Further reading](https://bundler.io/v2.0/man/gemfile.5.html)

```
# specify your gems in a Gemfile in your project’s root
ruby '2.5.6'

source 'https://rubygems.org'
gem 'nokogiri'
gem 'rack', '~>1.1'
gem 'rspec', :require => 'spec'
```

```bash
# install all the gems in the Gemfile
bundle install
```

## How to install a specific version of a particular ruby gem

```bash
gem install bundler -v 1.17
gem install minitest -v 5.8.4
```

## How to update a single gem using Bundler

```bash
bundle update nokogiri
```

Bundler attempted to update `gem_name` but its version stayed the same.

1. Another gem depends on the `gem_name`.
2. The version number is specified in your Gemfile for `gem_name`.

```
'gem_name', '~> 2.0.5'
```

## How to update every gem in the Gemfile using Bundler

```bash
bundle update
```

# Introduction

Ruby is a pure object-oriented and interpreted (executes the code at runtime) programming language invented in the mid-90s by [Yukihiro Matsumoto](https://github.com/matz). In Ruby, everything is an object.
It is easy to learn with dynamic typing and automatic memory management.

With the idea that programming should be enjoyable for programmers, it was created to increase programmer
productivity. It emphasizes the necessity for software to be understood by humans first and computers second.

Ruby will be quite familiar to Python, and Perl developers (and to a lesser extent C# and JavaScript developers) as Ruby was heavily inspired by Perl in certain areas (as was Python).
Ruby is less related to languages like C, C++, or Java because these languages are compiled (not interpreted), statically typed, and focused on performance rather than flexibility and
conciseness.

Ruby comes with a program that will show the results of any Ruby statements
you feed it. Playing with Ruby code in interactive sessions like this is a
terrific way to learn the language.

Open up IRB (which stands for Interactive Ruby).

-   If you’re using **macOS** open up `Terminal` and type `irb`, then hit enter.
-   If you’re using **Linux**, open up a `shell` and type `irb` and hit enter.
-   If you’re using **Windows**, open `Interactive Ruby` from the Ruby section
    of your Start Menu.

```ruby
1.next # 2
```

To test the above code, type the irb command from your shell to initiate the interpreter.

![1_OrzIgbBwYZUmgx3xm-woAg](https://user-images.githubusercontent.com/1612112/92318937-70e30000-f056-11ea-95b9-a9d3480fed36.gif)

# Reserved Words

| Reserved Word  | Description                                                                                                   |
|----------------|---------------------------------------------------------------------------------------------------------------|
| `__ENCODING__` | The script encoding of the current file.                                                                      |
| `__LINE__`     | The line number of this keyword in the current file.                                                          |
| `__FILE__`     | The path to the current file.                                                                                 |
| BEGIN          | Code enclosed in { } to run before program runs                                                               |
| END            | enclosed in { } to run when program ends                                                                      |
| alias          | Create alias for existing method, operator, global variable                                                   |
| and            | Logical AND Operator                                                                                          |
| begin          | Begins a block of code                                                                                        |
| break          | Terminate a loop                                                                                              |
| case           | Comparing an expression with matching when clause which<br/> closes with end                                  |
| class          | Defining a class                                                                                              |
| def            | Defining a function/method                                                                                    |
| defined?       | To check if some variable, function exists or not                                                             |
| do             | Begins a code block and execute code in the block, this ends with<br/> **end keyword**                        |
| else           | Executes following code if previous conditional is not true                                                   |
| elsif          | An alternate condition for an if expression.                                                                  |
| end            | For ending a code block which started with keywords like begin, class, def, do, if                            |
| ensure         | Always execute at block termination                                                                           |
| false          | Logical Boolean false value                                                                                   |
| for            | Begin a for loop                                                                                              |
| if             | Executes the code block in case conditional statement for if is true                                          |
| in             | Used with for loop                                                                                            |
| module         | Defining a module                                                                                             |
| next           | Jump to point immediately before evaluation of loop’s conditional                                             |
| nil            | Empty or invalid or always false                                                                              |
| not            | Logical Negation Operator                                                                                     |
| or             | Logical Or Operator                                                                                           |
| redo           | Jump after a loop conditional                                                                                 |
| rescue         | Evaluates the expression after an exception is raised                                                         |
| retry          | • When called outside of rescue repates the method call<br/>• When called inside rescue jumps to top of block |
| return         | Returns a value from a method or code block                                                                   |
| self           | Current Object                                                                                                |
| super          | Calls method of same name in the superclass                                                                   |
| then           | Separator used with if, unless, when, case, rescue                                                            |
| true           | Logical Boolean true                                                                                          |
| undef          | Makes a method/function undefined in current class                                                            |
| until          | Execute code block while conditional statement is false                                                       |
| when           | Starts a clause under case statement                                                                          |
| while          | Executes the code block, until the conditional statement becomes false                                        |
| yield          | Executes the code block which is passed to a method                                                           |

[Further reading][1]

# Comment

```ruby
# single line comment

=begin
multiline
comment
=end

=begin Comment line 1 =end

puts "Hello world!"  # Inline comment about the code

```

We put a space between the contents of the comment & the start of the comment to make
it easier to read.

I prefer `#` for multiline comments because it maintains my style guide and is easier to read.

# Operators

<table>
<tr>
<th>Logical operators</th>
<th>Bitwise operators</th>
<th>Arithmetic operators</th>
<th>Assignment operators</th>
<th>Comparison operators</th>
</tr>
<tr>

<td valign="top">

| No  | Operator |
| --- | -------- |
| 1   | and      |
| 2   | or       |
| 3   | not      |
| 4   | &&       |
| 5   | \|\|     |
| 6   | !        |

</td>

<td valign="top">

| No  | Operator |
| --- | -------- |
| 1   | &        |
| 2   | \|       |
| 3   | ^        |
| 4   | ~        |
| 5   | <<       |
| 6   | >>       |

</td>

<td valign="top">

| No  | Operator |
| --- | -------- |
| 1   | +        |
| 2   | -        |
| 3   | \*       |
| 4   | /        |
| 5   | %        |
| 6   | \*\*     |

</td>

<td valign="top">

| No  | Operator |
| --- | -------- |
| 1   | =        |
| 2   | +=       |
| 3   | -=       |
| 4   | \*=      |
| 5   | /=       |
| 6   | %=       |
| 7   | \*\*=    |

</td>

<td valign="top">

| No  | Operator |
| --- | -------- |
| 1   | ==       |
| 2   | !=       |
| 3   | >        |
| 4   | <        |
| 5   | >=       |
| 6   | <=       |
| 7   | <=>      |
| 8   | ===      |
| 9   | eql?     |
| 10  | equal?   |

</td>

</tr></table>

## Usage

```ruby
# Addition
1 + 1   #=> 2

# Subtraction
2 - 1   #=> 1

# Multiplication
2 * 2   #=> 4

# Division
10 / 5  #=> 2
17 / 5    #=> 3, not 3.4
17 / 5.0  #=> 3.4

# Exponent
2 ** 2  #=> 4
3 ** 4  #=> 81

# Modulus (find the remainder of division)
8 % 2   #=> 0  (8 / 2 = 4; no remainder)
10 % 4  #=> 2  (10 / 4 = 2 with a remainder of 2)

a = 10
b = 20

a == b #=> false
a != b #=> true
a > b #=> false
a < b #=> true
a >= b #=> false
a <= b #=> true

# Comparison Operator
a <=> b #=> -1
c = 20
c <=> b #=> 0
c <=> a  #=> 1

# Used to test equality within a when clause of a case statement.
(1...10) === 5 #=> true

# True if the receiver and argument have both the same type and equal values.
1.eql?(1.0) #=> false

c = a + b  #=> 30
c += a #=> 40
c -= a #=> 30
c *= a #=> 300
c /= a #=> 30
c %= a #=> 3
c **= a #=> 59049

# Ruby Parallel Assignment

a = 10
b = 20
c = 30

a, b, c = 10, 20, 30

# Ruby Bitwise Operators

a = 60
b = 13
# & Binary AND Operator copies a bit to the result if it exists in both operands.

a & b #=> 12

# | Binary OR Operator copies a bit if it exists in either operand.

a | b #=> 61

# ^ Binary XOR Operator copies the bit if it is set in one operand but not both.

a ^ b #=> 49

# ~ Binary Ones Complement Operator is unary and has the effect of 'flipping' bits.

~a

# << Binary Left Shift Operator. The left operands value is moved
# left by the number of bits specified by the right operand.

a << 2

# >> Binary Right Shift Operator. The left operands value is moved
# right by the number of bits specified by the right operand.

a >> 2


# Ruby Logical Operators

a and b #=> true.
a or b #=> true.
a && b #=> true.
(a || b) #=> true.
!(a && b) #=> false.
not(a && b) #=> false.

# Ruby Ternary Operator

# ? :
# If Condition is true ? Then value X : Otherwise value Y
a == 10 ? puts 'Right' : puts 'Wrong'

# Ruby Range Operators

# .. Creates a range from start point to end point inclusive.
1..10 #=> Creates a range from 1 to 10 inclusive.

# ... Creates a range from start point to end point exclusive.
1...10 #=> Creates a range from 1 to 10 exclusive.


```

## Operator Precedence Table

|                          Operators                           |
| :----------------------------------------------------------: |
|                        !, ~, unary +                         |
|                             \*\*                             |
|                           unary -                            |
|                           \*, /, %                           |
|                             +, -                             |
|                            <<, >>                            |
|                              &                               |
|                              ^                               |
|                         >, >=, <, <=                         |
|                   <=>, ==, ===, !=, =~, !~                   |
|                              &&                              |
|                             ?, :                             |
|                       modifier-rescue                        |
|                    =, +=, -=, \*=, /=, %=                    |
|                           defined?                           |
|                             not                              |
|                           or, and                            |
| modifier-if, modifier-unless, modifier-while, modifier-until |
|                          { } blocks                          |
|                      do ... end blocks                       |

# Variables and Scope

There are five different types of variables. The first character determines the scope.

| No  | Name        | Scope             | Example                    | Note                                                                                               |
| --- | ----------- | ----------------- | -------------------------- | -------------------------------------------------------------------------------------------------- |
| 1   | [a-z] or \_ | local             | count = 10 or \_count = 10 | Local variables must be initialized.                                                               |
| 2   | @           | instance variable | @id = []                   | Instance variables have the `nil` value until they are initialized.                                |
| 3   | @@          | class variable    | @@name = []                | Class variable must be initialized.                                                                |
| 4   | $           | global variable   | $version = "0.8.9"         | Global variables have the `nil` value until they are initialized.                                  |
| 5   | [A-Z]       | constant          | PI = 3.14                  | Constant variables must be initialized and you can change the constant but you will get a warning. |

## Local Variable

Local variables are available to the block in which they are declared.
A local variable declared within a loop or method cannot be accessed outside
of that loop or method. They must either begin with an underscore or lowercase letter.

```ruby
current_weather = "rainy"
_weather = "sunny"
```

Scope of a local variable is one of

-   proc{ ... }
-   loop{ ... }
-   def ... end
-   class ... end
-   module ... end
-   the entire program (unless one of the above applies)

## Instance Variable

Instance variable is specific instance of an object. Changes to an instance variable are only
available to that instance of the object. Instance variables are declared with a single @ sign.

```ruby
@current_weather = "rainy"
```

Scope of an instance variable is

Instance variables cannot be altered except for some methods,
and it's distinct to each object of a class.

## Class Variable

Class variables are shared by all instances of a Ruby class.
If one object instance changes the value of a class variable,
that new value will essentially change for all other object instances.
Class variables begin with a double @ sign.

```ruby
@current_weather = "rainy"
```

Scope of a class variable is one of

It can be called from a class by calling ClassName.class_variable,
and it's independent of any object of a class.

## Global Variable

Global variables in Ruby are accessible anywhere in the Ruby program,
regardless of where they are declared. Global variable names must
begin with a dollar sign ($).

The use of global variables is discouraged because they are visible
anywhere in the code for a program and can be changed from anywhere
in a program. This can make tracking down bugs extremely difficult.

```ruby
$current_weather = "rainy"
```

Scope of a global variable is

It can be referred from anywhere in a program.

## Constant Variable

Ruby constants are variables which, once assigned a value, shouldn't be changed.
Constant declared outside of a class or module have global scope.
If they are declared inside a class or module, they are available within
the context of the class or module in which they were declared.

```ruby
WEATHER = "rainy".freeze
```

Scope of a constant variable is

Accessible outside the class.

## Pseudo variables

| No  | Name       | Note                                               |
| --- | ---------- | -------------------------------------------------- |
| 1   | self       | The receiver object of the current method          |
| 2   | true       | Instance of the TrueClass                          |
| 3   | false      | Instance of the FalseClass                         |
| 4   | nil        | Instance of the NilClass                           |
| 5   | `__FILE__` | The name of current source file name               |
| 6   | `__LINE__` | The current line number of the current source file |

## Pre-defined variables

| No  | Name       | Note                                                                                                                                                                                                                                                                                                                                                                             |
| --- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1   | $!         | The exception information message. raise sets this variable.                                                                                                                                                                                                                                                                                                                     |
| 2   | $@         | The backtrace of the last exception, which is the array of the String that indicates the point where methods invoked from. The elements in the format like: "filename:line" or "filename:line:in `methodname'" (Mnemonic: where exception occurred at.)                                                                                                                          |
| 3   | $&         | The String matched by the last successful pattern match in this scope, or nil if the last pattern match failed. (Mnemonic: like & in some editors.) This variable is read-only.                                                                                                                                                                                                  |
| 4   | $`         | The String preceding whatever was matched by the last successful pattern match in the current scope, or nil if the last pattern match failed. (Mnemonic: ` often precedes a quoted string.) This variable is read-only.                                                                                                                                                          |
| 5   | $'         | The String following whatever was matched by the last successful pattern match in the current scope, or nil if the last pattern match failed. (Mnemonic: ' often follows a quoted string.)                                                                                                                                                                                       |
| 6   | $+         | The last bracket matched by the last successful search pattern, or nil if the last pattern match failed. This is useful if you don't know which of a set of alternative patterns matched. (Mnemonic: be positive and forward looking.)                                                                                                                                           |
| 7   | $1, $2...  | Contains the subpattern from the corresponding set of parentheses in the last successful pattern matched, not counting patterns matched in nested blocks that have been exited already, or nil if the last pattern match failed. (Mnemonic: like \digit.) These variables are all read-only.                                                                                     |
| 8   | $~         | The information about the last match in the current scope. Setting this variables affects the match variables like `$&, $+, $1, $2..` etc. The nth subexpression can be retrieved by $~[nth]. (Mnemonic: ~ is for match.) This variable is locally scoped.                                                                                                                       |
| 9   | $=         | The flag for case insensitive, nil by default. (Mnemonic: = is for comparison.)                                                                                                                                                                                                                                                                                                  |
| 10  | $/         | The input record separator, newline by default. Works like awk's RS variable. If it is set to nil, whole file will be read at once. (Mnemonic: / is used to delimit line boundaries when quoting poetry.)                                                                                                                                                                        |
| 11  | $\         | The output record separator for the print and IO#write. The default is nil. (Mnemonic: It's just like /, but it's what you get "back" from Ruby.)                                                                                                                                                                                                                                |
| 12  | $,         | The output field separator for the print. Also, it is the default separator for Array#join. (Mnemonic: what is printed when there is a , in your print statement.)                                                                                                                                                                                                               |
| 13  | $;         | The default separator for String#split.                                                                                                                                                                                                                                                                                                                                          |
| 14  | $.         | The current input line number of the last file that was read.                                                                                                                                                                                                                                                                                                                    |
| 15  | $<         | The virtual concatenation file of the files given by command line arguments, or stdin (in case no argument file supplied). `$<.file` returns the current filename. (Mnemonic: `$<` is a shell input source.)                                                                                                                                                                     |
| 16  | $>         | The default output for `print`, `printf`. `$stdout` by default. (Mnemonic: `$>` is for shell output.)                                                                                                                                                                                                                                                                            |
| 17  | $\_        | The last input line of String by gets or readline. It is set to nil if gets/readline meet EOF. This variable is locally scoped. (Mnemonic: partly same as Perl.)                                                                                                                                                                                                                 |
| 17  | $0         | Contains the name of the file containing the Ruby script being executed. On some operating systems assigning to $0 modifies the argument area that the ps(1) program sees. This is more useful as a way of indicating the current program state than it is for hiding the program you're running. (Mnemonic: same as sh and ksh.)                                                |
| 18  | $\*        | Command line arguments given for the script. The options for Ruby interpreter are already removed. (Mnemonic: same as sh and ksh.)                                                                                                                                                                                                                                               |
| 19  | $$         | The process number of the Ruby running this script. (Mnemonic: same as shells.)                                                                                                                                                                                                                                                                                                  |
| 20  | $?         | The status of the last executed child process.                                                                                                                                                                                                                                                                                                                                   |
| 21  | $:         | The array contains the list of places to look for Ruby scripts and binary modules by load or require. It initially consists of the arguments to any `-I` command line switches, followed by the default Ruby library, probabl `"/usr/local/lib/ruby"`, followed by `"."`, to represent the current directory. (Mnemonic: colon is the separators for PATH environment variable.) |
| 22  | $"         | The array contains the module names loaded by require. Used for prevent require from load modules twice. (Mnemonic: prevent files to be doubly quoted(loaded).)                                                                                                                                                                                                                  |
| 23  | $DEBUG     | The status of the `-d` switch.                                                                                                                                                                                                                                                                                                                                                   |
| 24  | $FILENAME  | Same as `$<.filename`.                                                                                                                                                                                                                                                                                                                                                           |
| 25  | $LOAD_PATH | The alias to the `$:`.                                                                                                                                                                                                                                                                                                                                                           |
| 26  | $stdin     | The current standard input.                                                                                                                                                                                                                                                                                                                                                      |
| 27  | $stdout    | The current standard output.                                                                                                                                                                                                                                                                                                                                                     |
| 28  | $stderr    | The current standard error output.                                                                                                                                                                                                                                                                                                                                               |
| 29  | $VERBOSE   | The verbose flag, which is set by the `-v` switch to the Ruby interpreter.                                                                                                                                                                                                                                                                                                       |

## Option variables

The variables which names are in the form of $-?, where ? is the option character,
are called option variables and contains the information about interpreter command
line options.

| No  | Name | Note                                                                                                                                |
| --- | ---- | ----------------------------------------------------------------------------------------------------------------------------------- |
| 1   | $-0  | The alias to the $/.                                                                                                                |
| 2   | $-a  | True if option -a is set. Read-only variable.                                                                                       |
| 3   | $-d  | The alias to the $DEBUG.                                                                                                            |
| 4   | $-F  | The alias to the $;.                                                                                                                |
| 5   | $-i  | In in-place-edit mode, this variable holds the extention, otherwise nil. Can be assigned to enable (or disable) in-place-edit mode. |
| 6   | $-I  | The alias to the $:.                                                                                                                |
| 7   | $-l  | True if option -lis set. Read-only variable.                                                                                        |
| 8   | $-p  | True if option -pis set. Read-only variable.                                                                                        |
| 9   | $-v  | The alias to the $VERBOSE.                                                                                                          |

[Source](https://ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/variable.html#variables)

## Pre-defined global constants

| No  | Name              | Note                                                                                                                             |
| --- | ----------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| 1   | TRUE              | The typcal true value. All non-false values (everything except nil and false) is true in Ruby.                                   |
| 2   | FALSE             | The false itself.                                                                                                                |
| 3   | NIL               | The nil itself.                                                                                                                  |
| 4   | STDIN             | The standard input. The default value for $stdin.                                                                                |
| 5   | STDOUT            | The standard output. The default value for $stdout.                                                                              |
| 6   | STDERR            | The standard error output. The default value for $stderr.                                                                        |
| 7   | ENV               | The hash-like object contains current environment variables. Setting a value in ENV changes the environment for child processes. |
| 8   | ARGF              | The alias to the $<.                                                                                                             |
| 9   | ARGV              | The alias to the $\*.                                                                                                            |
| 10  | DATA              | The file object of the script, pointing just after the **END**. Not defined unless the script is not read from the file.         |
| 11  | VERSION           | The Ruby version string.                                                                                                         |
| 12  | RUBY_RELEASE_DATE | The relase date string.                                                                                                          |
| 13  | RUBY_PLATFORM     | The platform identifier.                                                                                                         |

[Source](https://ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/variable.html#constants)

## How to check scope of variables

```ruby
defined? count
"local-variable"
defined? @id
"instance-variable"
defined? @@name
"class variable"
defined? $version
"global-variable"
defined? PI
"constant"
```

# Conditional structures

## if Modifier

```ruby
num = 2
puts 'two' if num == 2 
```
Executes code if the conditional is true.

## If elsif else Statement

```ruby
temp = 19

if temp >= 25
  puts "hot"
elsif temp < 25 && temp >= 18
  puts "normal"
else
  puts "cold"
end

# output
# normal
```

`if` expressions are used for conditional execution.
The values `false` and `nil` are `false`, and everything else are `true`. 
Notice Ruby uses `elsif`, not `else if` nor `elif`.

Executes code if the conditional is `true`. If the conditional is not `true`, code specified in the `else` clause is executed.

An `if` expression's conditional is separated from code by the reserved word then, a newline, or a semicolon.


## unless Statement

```ruby
# The unless is opposite of if, evaluates when the statement is false

name = "rob"

# if name != "bob"
unless name == "bob"
  puts "hello stranger"
else
  puts "hello bob"
end
# output
# hello stranger

num = 6
puts 'not two' unless num == 2
# output
# not two
```
Executes code if conditional is `false`. If the conditional is `true`, code specified in the else clause is executed.

## Case Statements

```ruby
# case returns the value of the last expression executed

case input
# check an integer, 19
when 19
  puts "It's 19"
  # check a float number, 33.3
when 33.3
  puts "It's 33.3"
  # check an exact string, "Zaman"
when "Zaman"
  puts "Hi Zaman"
when 10
  puts "It's 10"
  # check against a range
when 7..11
  puts "It's between 7 and 11"
  # check against multiple values, "coffee"
when "tea", "coffee"
  puts "Happy days"
  # check against a regular expression, "aA6"
when /^a[A-Z]+[0-6]+$/
  puts "It's a valid match"
  # check any string by comparing against the String class, "any string"
when String
  puts "It's a String"
end

# using short syntax
case input
  when 19 then puts "It's 19"
end

# optional fallthrough
case input
  when 19 then puts "It's 19"
else
  puts "It's not 19"
end

# get the return value
marks = 86

result = case marks
         when 0..49 then "Fail"
         when 50..64 then "Pass"
         when 65..74 then "Credit"
         when 75..84 then "Distinction"
         when 85..100 then "High Distinction"
         else "Invalid marks"
         end

puts result
# High Distinction
```
Compares the expression specified by case and that specified by when using the === operator and executes the code of 
the when clause that matches.

The expression specified by the when clause is evaluated as the left operand. If no when clauses match, case executes
the code of the else clause.

A when statement's expression is separated from code by the reserved word then, a newline, or a semicolon.

# Data types

| No  | Type    | Example                      | Class                                              | Doc                                 |
| --- | ------- | ---------------------------- | -------------------------------------------------- | ----------------------------------- |
| 1   | Integer | a = 17                       | a.class > Integer <br>a.class.superclass > Numeric | [link][2]                           |
| 2   | Float   | a = 87.23                    | a.class > Float <br>a.class.superclass > Numeric   | [link][3]                           |
| 3   | String  | a = "Hello universe"         | a.class > String                                   | [link][4]                           |
| 4   | Array   | a = [12, 34]                 | a.class > Array                                    | [link][5]                           |
| 5   | Hash    | a = {type: "tea", count: 10} | a.class > Hash                                     | [link][6]                           |
| 6   | Boolean | a = false<br>a = true        | a.class > FalseClass <br>a.class > TrueClass       | [TrueClass][7] <br> [FalseClass][8] |
| 7   | Symbol  | a = :status                  | a.class > Symbol                                   | [link][9]                           |
| 8   | Range   | a = 1..3                     | a.class > Range                                    | [link][10]                          |
| 9   | Nil     | a = nil                      | a.class > NilClass                                 | [link][11]                          |

[Further readings](https://www.digitalocean.com/community/tutorials/understanding-data-types-in-ruby)

## How to check the data type

```ruby
# both are synonymous
a = 37
a.kind_of? Integer
# true
a.is_a? Integer
# true
```

# Symbol

Symbol objects represent names. Symbols are immutable, which means every symbol is unique, and we can't change it. Referencing the same symbol multiple times is the same as referencing the same object everywhere in your program. As a result, we can save both time and memory by referencing the same memory location.

Symbols as hash keys.

```ruby
week_days = {sunday: 11, monday: 222}
```

# String

## String Interpolation

String interpolation allows you to combine strings together:

```ruby
name = "World"
puts "Hello #{name}"

puts "The total is #{1+1}"
# "the total is 2"
```

## How to Extract a Substring

A substring is a smaller part of a string, it’s useful if you only want that specific part,
like the beginning, middle, or end.

```ruby

string = "abc123"
string[0,3]
# "abc"

string[3,3]
# "123"

string[0..-2]
# "abc12"

#remove or replace the substring
string[0..2] = ""
puts string
# "123"
```

## How to convert String to lower or upper case

| No  | Method name | Output                                          |
| --- | ----------- | ----------------------------------------------- |
| 1   | downcase    | `"HELLO World".downcase` <br> `"hello world"`   |
| 2   | upcase      | `"hello worlD".upcase` <br> `"HELLO WORLD"`     |
| 3   | capitalize  | `"hEllo wOrlD".capitalize` <br> `"Hello world"` |
| 4   | swapcase    | `"hEllo WOrlD".swapcase` <br> `"HeLLO woRLd"`   |

## Helpful methods

| No  | Method name                      | Output                                                                                                  | Note                                                                                                                                                                                             |
| --- | -------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| 1   | length or size                   | `"HELLO World".length` <br> `11` <br> `"HELLO World".size` <br> `11`                                    | returns the length of the string                                                                                                                                                                 |
| 2   | reverse                          | `"hello worlD".reverse` <br> `"Dlrow olleh"`                                                            | returns the reversed string                                                                                                                                                                      |
| 3   | include? other_str               | `"hEllo wOrlD".include? "w"` <br> `true`                                                                | returns true if the string or charecter is present or otherwise false                                                                                                                            |
| 4   | gsub(pattern, replacement)       | `"hEllo wOrlD".gsub(" ", "_")` <br> `"hEllo_wOrlD"`                                                     | gsub or global substitute substitutes one or more string with provided strings                                                                                                                   |
| 5   | gsub(pattern, hash)              | `"organization".gsub("z", 'z' => 's')` <br> `"organisation"`                                            | gsub or global substitute substitutes one or more string with provided hash                                                                                                                      |
| 6   | gsub(pattern) { \|match\| block} | `"Price of the phone is 1000 AUD".gsub(/\d+/) { \|s\| '$'+s }` <br> `"Price of the phone is $1000 AUD"` | gsub or global substitute substitutes one or more string with provided block                                                                                                                     |
| 7   | strip                            | `" hEllo WOrlD ".strip` <br> `"hEllo WOrlD"`                                                            | It will remove (trim) any of the following leading and trailing characters: null("\x00"), horizontal tab("\t"), line feed(\n), vertical tab("\v"), form feed(f), carriage return(\r), space(" ") |
| 8   | prepend                          | `a = "world" <br> a.prepend("hello ")` <br> `"hello world"`                                             | Add string before another string                                                                                                                                                                 |
| 9   | insert                           | `a = "hello" <br> a.insert(a.length, " world")` <br> `"hello world"`                                    | Insert string at a specific position                                                                                                                                                             |
| 10  | start_with?                      | `string = "ruby programming" <br> string.start_with? "ruby"` <br> `true`                                | To check if a string starts with a specific prefix                                                                                                                                               |
| 11  | end_with?                        | `string = "ruby programming" <br> string.end_with? "ruby"` <br> `false`                                 | To check if a string ends with a specific prefix                                                                                                                                                 |
| 12  | delete_suffix                    | `string = "sausage is expensive" <br> string.delete_suffix(" is expensive")` <br> `"sausage"`           | Deletes suffix from a string                                                                                                                                                                     |
| 13  | delete_prefix                    | `string = "sausage is expensive" <br> string.delete_prefix("sausage")` <br> `" is expensive"`           | Deletes prefix from a string                                                                                                                                                                     |
| 14  | split                            | `string = "a b c d" <br> string.split` <br> `["a", "b", "c", "d"]`                                      | Convert a String to An Array of Characters                                                                                                                                                       |
| 16  | join                             | `arr = ['a', 'b', 'c'] <br> arr.join` <br> `"abc"`                                                      | Convert an Array to a String                                                                                                                                                                     |
| 17  | to_i                             | `a = "49" <br> a.to_i` <br> `49`                                                                        | Convert a String Into An Integer                                                                                                                                                                 |
| 18  | chop                             | `"abcd?".chop("?")` <br> `"abcd"`                                                                       | Removes the Last Character From a String                                                                                                                                                         |
| 19  | count                            | `str = "aaab" <br> str.count("a")` <br> `3`                                                             | Counts character in a string                                                                                                                                                                     |
| 20  | to_f                             | `a = "49" <br> a.to_f` <br> `49.0`                                                                      | Convert a String Into A Floating Number                                                                                                                                                          |
| 21  | to_sym                           | `a = "key" <br> a.to_sym` <br> `:key`                                                                   | Convert a String Into A Symbol                                                                                                                                                                   |
| 22  | match                            | `"abcd?".match(/ab/)` <br> `#<MatchData "ab">`                                                          | Convert pattern to regexp and invoke its match method on string                                                                                                                                  |
| 23  | empty?                           | `"hello".empty?` <br> `false`                                                                           | Return true if string has a length of zero                                                                                                                                                       |
| 24  | squeeze                          | `"Booook".squeeze` <br> `"Bok"`                                                                         | Return copy of string where runs of the same character are replaced by a single character                                                                                                        |
| 25  | \*                               | `puts "Ruby " * 4` <br> `Ruby Ruby Ruby Ruby`                                                           | Returns the concatenation of multiple copies of self                                                                                                                                             |
| 26  | +                                | `"sammy " + "shark"` <br> `"sammyshark"`                                                                | Returns the concatenation of self and a given other string                                                                                                                                       |
| 27  | eql?                             | `s = 'foo'` <br> `s.eql?('foo')` <br> `true`                                                            | Returns true if object has the same length and content; as self; false otherwise                                                                                                                 |
| 26  | +                                | `"sammy " + "shark"` <br> `"sammyshark"`                                                                | Returns the concatenation of self and a given other string                                                                                                                                       |
| 26  | +                                | `"sammy " + "shark"` <br> `"sammyshark"`                                                                | Returns the concatenation of self and a given other string                                                                                                                                       |

# Integer

## Helpful methods

```ruby
2.even?
# true
3.even?
# false
```

# Range

Ranges allow us to declare data with a beginning and an end, it has two operators to generate ranges.

```ruby
# .. for creating inclusive ranges

range = 1..10
range.to_a
# output
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

```ruby
# ... for creating exclusive ranges

range = 1...10
range.to_a
# output
# [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

## Helpful methods

| No  | Method name | Output                              |
| --- | ----------- | ----------------------------------- |
| 1   | cover?      | (1..5).cover?(5) <br> true          |
| 2   | end         | ('a'..'z').end <br> "z"             |
| 3   | first       | (1..5).first <br> 1                 |
| 4   | first(3)    | ('A'..'Z').first(2) <br> ["A", "B"] |
| 5   | eql?        | ((0..2).eql?(0..5) <br> false       |

## How to use step with Range

```ruby
(1..20).step(2) { |number| puts "#{number}"}
# output
# 1
# 3
# 5
# 7
# 9
# 11
# 13
# 15
# 17
# 19
```

# Methods

A method is a function that takes zero or more parameters and returns a value. Ruby method returns nil by default.

## How to declare a method

In Ruby, the last statement evaluated is the return value of that method. The return statement is optional. Depending on your preference, you can choose either of them 👍. I prefer to use the return statement because it's easier to understand.

```ruby
def method_name(parameter1, parameter2)
    puts "#{parameter1} #{parameter2}"
    parameter1 + parameter2
end

res = method_name(20, 10)
# output
# 30
```

```ruby
def method_name(parameter1, parameter2)
    puts "#{parameter1} #{parameter2}"
    return parameter1 + parameter2
end
# output
# 30
```

## How to call a method

```ruby
res = method_name(parameter1, parameter2)
# In Ruby you can call methods without parentheses
res = method_name parameter1, parameter2
```

## How to define a default value for a method parameter

```ruby
def method_name(parameter1, parameter2, type = "ADD")
    puts "#{parameter1} #{parameter2}"
    return parameter1 + parameter2 if type == "ADD"
    return parameter1 - parameter2 if type == "SUB"
end

res = method_name(20, 10)
# output
# 30
```

## How to use another parameter for the default value

```ruby
def method_name(num1, num2 = num1)
    return num1 + num2
end

res = method_name(10)
# output
# 20
```

## How to pass variable length argument to a method parameter

```ruby
def method_name(type, *values)
    return values.reduce(:+) if type == "ADD"
    return values.reduce(:-) if type == "SUB"
end

numbers = [2, 2, 2, 3, 3, 3]

res = method_name("ADD", *numbers)
# output
# 15

res = method_name("SUB", *numbers)
# output
# -11

# or you can provide the values like this
res = method_name("ADD", 2, 2, 2, 3, 3, 3)
# output
# 15
```

## Modify object

The `!` is used after the method when you want to modify the object.

```
a = ["Drama",
"Mystery",
"Crime",
"Sci-fi",
"Disaster",
"Thriller"]
a.sort
puts a
# we didn't modify the object
# Drama
# Mystery
# Crime
# Sci-fi
# Disaster
# Thriller

a.sort!
puts a
# modify the object
# Crime
# Disaster
# Drama
# Mystery
# Sci-fi
# Thriller
```

## Boolean method

In ruby methods that end with a question mark (?) are called boolean methods, which either returns true or false.

```ruby
"some text".nil?
# false
nil.nil?
# true
```

You can have your own boolean methods.

```ruby
def is_vowel?(char)
    ['a','e','i','o','u'].include? char
end

is_vowel? 'a'
# true
is_vowel? 'b'
# false
```

## Class method

A class method is a class-level method. There are multiple ways of defining a class method.

```ruby
class Mobile
    def self.ring
        "ring ring ring..."
    end
end

Mobile.ring
```

```ruby
class Mobile
    def Mobile.ring
        "ring ring ring..."
    end
end

Mobile.ring
```

```ruby
class Mobile
    class << self
    def ring
        "ring ring ring..."
       end
    end
end

Mobile.ring
```

A class method is an instance method of the class object. When a new class is created, an object of type `Class` is initialized and assigned to a global constant (Mobile in this case).

```ruby
Mobile = Class.new do
    def self.ring
        "ring ring ring..."
    end
end

Mobile.ring
```

```ruby
Mobile = Class.new

class << Mobile
    def ring
        "ring ring ring..."
    end
end

Mobile.ring
```

# Blocks

Codes between `do` and `end` (for multiline) or curly brackets `{` and `}` (for a single line) are called blocks, and they can have multiple arguments defined between two pipes `(|arg1, arg2|)`.
A block can be passed as a method parameter or can be associated with a method call. A block returns the last evaluated statement.

```ruby
# return value
def give_me_data
    data = yield
    puts "data = #{data}"
end

give_me_data { "Big data" }

# output
# data = Big data
```

```ruby
# single line block
salary = [399, 234, 566, 533, 233]
salary.each { |s| puts s }

# puts s = block body
# |s| = block arugments
```

```ruby
# multiline block
salary.each do |s|
    a = 10
    res = a * s
    puts res
end

# block body
# a = 10
# res = a * s
# puts res

# block arugments
# |s|
```

Methods can take blocks implicitly and explicitly. If you want to call a block implicitly use the `yield` keyword. Yield finds the block and calls the passed block. Since you can pass implicit blocks, you don't have to call yield, and the block will be ignored.

```ruby
# passing a block implicitly
def give_me_data
    puts "I am inside give_me_data method"
    yield
    puts "I am back in give_me_data method"
end

give_me_data { puts "Big data" }

# output
# I am inside give_me_data method
# Big data
# I am back in give_me_data method

# call multiple times
def give_me_data
    yield
    yield
    yield
end

give_me_data { puts "Big data" }

# output
# Big data
# Big data
# Big data

# call with block arguments

def give_me_data
    yield 10
    yield 100
    yield 30
end

give_me_data { |data| puts "Big data #{data} TB" }

# output
# Big data 10 TB
# Big data 100 TB
# Big data 30 TB

# call with multiple block arguments

def give_me_data
    yield "Big data", 10, "TB"
    yield "Big data", 100, "GB"
    yield "Big data", 30, "MB"
end

give_me_data { |text, data, unit| puts "#{text} #{data} #{unit}" }

# output
# Big data 10 TB
# Big data 100 GB
# Big data 30 MB

#  block will try to return from the current context
give_me_data
    puts "I am inside give_me_data method"
end

def test
    puts "I am inside test method"
    give_me_data { return 10 } # code returns from here
    puts "I am back in test method"
end

return_value = test

# output
# I am inside test method
# I am inside give_me_data method
# 10
```

```ruby
# passing a block explicitly by using an ampersand parameter, here we are explicitly defining the method with block parameter and calling it
def give_me_data(&block)
    block.call
    block.call
end

give_me_data { puts "Big data" }

# output
# Big data
# Big data
```

## How to check if a block is given

block parameter is mandatory when you call yield inside a method; otherwise, it will raise an exception

```ruby
def give_me_data
    yield
end

give_me_data

# output
# LocalJumpError: no block given (yield)

# you can use block_given? method to handle the exception and make the block optional

def give_me_data
    return "no block" unless block_given?
    yield
end

give_me_data { puts "Big data" }
give_me_data

# output
# Big data

def give_me_data(&block)
    block.call if block
end

give_me_data { puts "Big data" }
give_me_data

# output
# Big data
```

# Procs

A proc is like a block that can be stored in a variable.

```ruby
p = Proc.new { puts "Hello World" }

def give_me_data(proc)
    proc.call
end

give_me_data p

# output
# Hello World

# arbitrary arguments
p = Proc.new { |count| "Hello World " * count }

def give_me_data(proc)
    proc.call 5, 2
end

give_me_data p

# output
# "Hello World Hello World Hello World Hello World Hello World "

#  proc will try to return from the current context
p = Proc.new { return 10 }
p.call

# output
LocalJumpError: unexpected return

# because you can’t return from the top-level context

def give_me_data
    puts "I am inside give_me_data method"
    p = Proc.new { return 10 }
    p.call # code returns from here
    puts "I am back in give_me_data method"
end

return_value = give_me_data
puts return_value

# output
# I am inside give_me_data method
# 10
```

# Lambdas

Lambda is an anonymous function, wrap the lambda with `do and end` (for multiline) or curly brackets `{ and }` (for a single line). Lambda returns the last evaluated statement.

```ruby
# there are multiple ways to declare a lambda
l = lambda { puts "Hello World" }
# shorthand
l = -> { puts "Hello World" }

# call the lambda
l.call

# output
# Hello World

# there are multiple ways you can call a lambda
l.()
l[]

# strict arguments
l = -> (count) { "Hello World " * count }
l.call 5

# output
# "Hello World Hello World Hello World Hello World Hello World "

l.call 5, 2

# output
wrong number of arguments (given 2, expected 1)

# lambdas return from the lambda itself, like a regular method
l = -> { return 10 }
l.call

# output
# 10

def give_me_data
    puts "I am inside give_me_data method"
    l = -> { return 10 }
    l.call
    puts "I am back in give_me_data method"
end

return_value = give_me_data
puts return_value

# output
# I am inside give_me_data method
# I am back in give_me_data method
# nil # because puts return nil
```

# Blocks VS Procs VS Lambdas

All of them are used for executing a single line or multiline code.

| Name    | Object | Example                             | Object type                                 | When to use                                                                                                                                |
| ------- | ------ | ----------------------------------- | ------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| Blocks  | No     | { puts "Hello World" }              | -                                           | 1. when you want to pass blocks of code to a methods <br> 2. arbitrary arguments <br> 3. blocks return from the current method             |
| Procs   | Yes    | p = Proc.new { puts "Hello World" } | p.class <br> Proc <br> p.lambda? <br> false | 1. similar to blocks but can store in variables <br> 2. arbitrary arguments <br> 3. Procs return from the current method                   |
| Lambdas | Yes    | l = lambda { puts "Hello World" }   | l.class <br> Proc <br> l.lambda? <br> true  | 1. it's a proc but acts like methods and can be stored in variables <br> 2. strict arguments <br> 3. lambdas return from the lambda itself |

# Array

Unlike other programming languages like Java, Ruby only has dynamic arrays 
but no static arrays. That means you don’t have to worry about the size of
the array while adding new values.

One way Ruby allows you to represent a collection of data is with arrays,
which you can think of as ordered lists. Rather than working with individual
variables, numbers, or strings, an array allows you to create and manipulate
an ordered and indexed collection of these data.

The individual variables, numbers, or strings within an array are known
as elements.

An array can contain any combination of variables, numbers, strings, or other
Ruby objects (including other arrays), although it is advisable to keep similar
data types in any one array.

There are multiple ways we can initialize an empty array.

```ruby
array = Array.new   #=> []
# or
array = []

# An Array can contain different types of objects. 
array = [1, "two", 3.0] #=> [1, "two", 3.0]

```

Fill an array with the initial size and a default object.

```ruby

numbers = Array.new(3)            #=> [nil, nil, nil]
numbers = Array.new(3, 7)         #=> [7, 7, 7]
numbers = Array.new(3, true)      #=> [true, true, true]

numbers = []
numbers.fill(7, 0..2)   #=> [7, 7, 7]
```

How about an array with different hashes? No problem, Ruby has you covered!

```ruby
array_with_hashes = Array.new(2) { {} } #=> [{}, {}]
array_with_hashes[0][:name] = "Bob"
array_with_hashes[0][:id] = 10          #=> [{:name=>"Bob", :id=>10}, {}]
```

Let’s talk about 2D arrays briefly.

```ruby
temperature_data = [
                     ["A908", 38],
                     ["A909", 37],
                     ["A910", 38],
                   ]
temperature_data[0]    #=> ["A908", 38]
temperature_data[0][0] #=> "A908"
temperature_data[0][1] #=> 38
```

Array indexing starts at 0. A negative index is relative to the end of the array,
so -1 is the last element of the array, -2 is the second last element in the array,
and so on.

```ruby
str_array = ["This", "is", "a", "small", "array"]
str_array[0]            #=> "This"
str_array[1]            #=> "is"
str_array[4]            #=> "array"

# A negative index is an offset, backwards, from the end of the array:

# Index -1 indicates the last element.
str_array[-1]             #=> "array"

# Index -2 indicates the next-to-last element.
str_array[-2]             #=> "small"

# A negative index is in range if its absolute value is 
# not larger than the size of the array.

str_array[-6]             #=> nil

# str_array.at
puts str_array.at(0)      #=> "This"

arr = [1, 2, 3, 4, 5, 6]
arr[100]                  #=> nil
arr[-3]                   #=> 4
arr[2, 3]                 #=> [3, 4, 5]
arr[1..4]                 #=> [2, 3, 4, 5]
arr[1..-3]                #=> [2, 3, 4]

# To raise an error for indices outside of the array bounds
# or else to provide a default value when that happens, you can use fetch.

arr = ['a', 'b', 'c', 'd', 'e', 'f']
arr.fetch(100)            #=> IndexError: index 100 outside of array bounds: -6...6
arr.fetch(100, "oops")    #=> "oops"


arr = [1, 2, 3, 4, 5, 6]

# The special methods first and last will return the first and last elements of an array
arr.first                #=> 1
arr.last                 #=> 6

# To return the first n elements of an array, use take
arr.take(3)             #=> [1, 2, 3]

# drop does the opposite of take, by returning the elements
# after n elements have been dropped
arr.drop(3)            #=> [4, 5, 6]

```

Add values at the end of the array.

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.push(11)          #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
numbers.push(12, 13, 14)  #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
```

Remove value from the end of the array.

```ruby
num_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
num_array.pop             #=> 10
num_array                 #=> [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

Add values at the start of the array.

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.unshift(0)          #=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.unshift(-3, -2, -1) #=> [-3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

To retrieve and at the same time remove the first item, use shift:

```ruby
numbers.shift #=> 1
numbers       #=> [2, 3, 4, 5, 6, 7, 8, 9, 10]
```

To delete an element at a particular index:

```ruby
numbers.delete_at(2) #=> 4
numbers              #=> [2, 3, 5, 6, 7, 8, 9, 10]
```

To delete a particular element anywhere in an array, use delete:

```ruby
numbers.delete(2) #=> 2
numbers           #=> [3, 5, 6, 7, 8, 9, 10]
```

Insert values at the given index.

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.insert(0, 0)           #=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.insert(0, -3, -2, -1)  #=> [-3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.insert(-1, 12, 13, 14) #=> [-3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14]
numbers.insert(-4, 11)         #=> [-3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
```

How about a block to populate the values of an array?

```ruby
numbers = Array.new(10) { |n| n = n * 2 } #=> [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
```

It gets easier to fill an array.

```ruby
numbers = Array(100..110) #=> [100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110]

# or we can convert a range to an array
(100..110).to_a #=> [100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110]

```

A useful method if you need to remove nil values from an array is compact:

```ruby
arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact  #=> ['foo', 0, 'bar', 7, 'baz']
arr          #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact! #=> ['foo', 0, 'bar', 7, 'baz']
arr          #=> ['foo', 0, 'bar', 7, 'baz']

```

Another common need is to remove duplicate elements from an array.

It has the non-destructive uniq, and destructive method uniq!

```ruby
arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]

```
## How to iterate an Array

There are multiple ways you can iterate an Array.


| No  | Name             | When to use                                                                                                                                                                                                                                                                |
| --- | ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1   | each             | when you want to just iterate                                                                                                                                                                                                                                              |
| 2   | each_with_index  | when you want both index and value                                                                                                                                                                                                                                         |
| 3   | each_with_object | when you want to build a hash or reduce a collection to one object. It Iterates the given block for each element with an arbitrary object given and returns the first given object. It only works with a mutable object like Hash but not an immutable object like integer |
| 4   | each_index       | when you want just the indexes                                                                                                                                                                                                                                             |
| 5   | map              | returns an array containing the values returned by the block                                                                                                                                                                                                               |
| 6   | collect          | same as map                                                                                                                                                                                                                                                                |
| 7   | while            | when you want to iterate for a certain number of times                                                                                                                                                                                                                     |
| 8   | do while         | when you want to iterate until something happens                                                                                                                                                                                                                           |
| 9   | for              | similar to each_with_index                                                                                                                                                                                                                                                 |
| 10  | until            | when you want to iterate until something happens                                                                                                                                                                                                                           |
| 11  | times            | when you want to iterate `n` number of times                                                                                                                                                                                                                               |
| 12  | upto             | when you want to iterate upto `n`, starting from `m`, both inclusive, where `n >= m`. when `n < m` it will run zero times                                                                                                                                                  |
| 13  | downto           | when you want to iterate downto `n`, starting from `m`, both inclusive, where `n <= m`. when `n > m` it will run zero times                                                                                                                                                |
| 14  | step             | when you want to iterate upto or downto `n` by incrementing or decrementing `x` steps starting from `m`, both inclusive. the default value of step is `1` and for `n` it's infinity                                                                                        |
| 15  | inject           | when you want a single value. helpful when you want to accumulate, concatenate                                                                                                                                                                                             |
| 16  | reduce           | reduce and inject methods are aliases                                                                                                                                                                                                                                      |
| 17  | detect           | returns the first item if matched the condition, returns `nil` otherwise. helpful when you are looking for something based on a business logic                                                                                                                             |
| 18  | find             | find and detect methods are aliases                                                                                                                                                                                                                                        |
| 19  | select           | adds value to a new array if your block returns true, returns `[]` otherwise. helpful when you are looking for a subset                                                                                                                                                    |
| 20  | reject           | removes a value from a new array if your block returns true, returns `[]` otherwise. helpful when you are looking for a subset                                                                                                                                             |
| 21  | keep_if          | keeps a value in the original array if your block returns true                                                                                                                                                                                                             |
| 22  | delete_if        | removes a value from the original array if your block returns true                                                                                                                                                                                                         |
| 23  | drop_while       | drops elements up to but not including for the first element which the block returns nil or false and returns an array containing the remaining elements                                                                                                                   |
| 24  |   reverse_each   | when you want to iterate over the elements in the array in `reverse` order                                                                                                                                                                                                   |

### each

```ruby
# when you have single line block
salary = [399, 234, 566, 533, 233]
salary.each { |s| puts s }
# output
# 399
# 234
# 566
# 533
# 233
```

```ruby
# when you have a multiline block, you can replace the curly brackets {} with do and end
salary.each do |s|
  a = 10
  res = a * s
  puts res
end
# output
# 3990
# 2340
# 5660
# 5330
# 2330

# or you can do the same thing just using curly brackets {} and semicolons as separators instead of new lines
salary.each { |s| a = 10 ; res = a * s ; puts res }
```

### each_with_index

```ruby
salary = [399, 234, 566, 533, 233]
salary.each_with_index { |value, index| puts "#{index} #{value}" }
# output
# 0 399
# 1 234
# 2 566
# 3 533
# 4 233
```

### each_with_object

```ruby
colors = [{color: "red", count: 3}, {color: "red", count: 5}, {color: "black", count: 4}]
colors.each_with_object(Hash.new(0)) { |color, hash| hash["color_"+color[:color]] = color[:color].upcase; hash["count_"+color[:color]] += color[:count] }
# output
{"color_red"=>"RED", "count_red"=>8, "color_black"=>"BLACK", "count_black"=>4}

[1, 2, 3].each_with_object(0) { |number, sum| sum += number}
# output
# 0
# because 0 is immutable, since the initial object is 0, the method returns 0
```

### each_index

```ruby
salary = [399, 234, 566, 533, 233]
salary.each_index { |i| puts i}
# output
# 0
# 1
# 2
# 3
# 4
```

### map

```ruby
salary = [399, 234, 566, 533, 233]
salary.map { |s|  s * 10  }
# returns
# [3990, 2340, 5660, 5330, 2330]

# on the other hand each returns the originl values
salary = [399, 234, 566, 533, 233]
salary.each { |s|  s * 10  }
# returns
# [399, 234, 566, 533, 233]
```

### collect

```ruby
salary = [399, 234, 566, 533, 233]
salary.collect { |s| s > 400 }
# output
# [false, false, true, true, false]
```

### while

```ruby
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
index = 0
while index < planets.size
    puts "#{planets[index]}"
    index += 1
end
```

```ruby
a = 1
star = '*'
while a <= 10
    puts star
    star += '*'
    a += 1
end
```

### do while

```ruby
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
index = 0
loop do
    puts "#{planets[index]}"
    index += 1
    break if planets[index] == "Mars" or index > planets.size
end
```

### for

```ruby
for value in [2, 3, 5, 7]
    puts value
end
```

### until

```ruby
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
index = planets.size - 1
until index < 0
    puts "#{planets[index]}"
    index -= 1
end
```

```ruby
a = 1
star = '*'
until star.length > 10
    puts star
    star += '*'
    a += 1
end
```

### times

```ruby
10.times { puts "#{rand(1..100)}"}
# output
# will print 10 random numbers
```

```ruby
# just because you can doesn't mean you should iterate an array like this
data_sample = [2, 3, 5, 7]
data_sample.size.times { |index| puts "#{data_sample[index]}" }
# output
# 2
# 3
# 5
# 7
```

### upto

```ruby
data_sample = [2, 3, 5, 7]
0.upto((data_sample.size - 1) / 2) { |index| puts "#{data_sample[index]}" }
# output
# 2
# 3
```

### downto

```ruby
data_sample = [2, 3, 5, 7]
(data_sample.size - 1).downto(data_sample.size / 2) { |index| puts "#{data_sample[index]}" }
# output
# 7
# 5
```

### step

```ruby
1.step(20, 2) { |number| puts "#{number}"}
# output
# 1
# 3
# 5
# 7
# 9
# 11
# 13
# 15
# 17
# 19
```

```ruby
19.step(1, -2) { |number| puts "#{number}"}
# output
# 19
# 17
# 15
# 13
# 11
# 9
# 7
# 5
# 3
# 1
```

### inject

```ruby
numbers = [2, 2, 2, 2, 2]
numbers.inject{ |res, n| res + n }
# output is the result of the sum of all numbers
# if you do not set an initial value for res, then the first element of the array is used as the initial value of res
# 10

# now set the value of res with 11
numbers = [2, 2, 2, 2, 2]
numbers.inject(11) { |res, n| res + n }
# so 11 + 2, 13 + 2, 15 + 2, 17 + 2 and 19 + 2
# 21

# using symbol
numbers = [2, 2, 2, 2, 2]
numbers.inject(:+)
# output
# 10

# using initial value and a symbol
numbers = [2, 2, 2, 2, 2]
numbers.inject(11, :+)
# output
# 21
```

### reduce

```ruby
numbers = [2, 2, 2, 2, 2]
numbers.reduce(11, :+)
# output
# 21
```

### detect

```ruby
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
planets.detect { |name| name.start_with?("E") and name.end_with?("h") }
# output
# Earth

salary = [399, 234, 566, 533, 233]
salary.detect { |s| s > 1000 }
# output
# nil
```

### find

```ruby
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
planets.find { |name| name.start_with?("E") and name.end_with?("h") }
# output
# Earth
```

### select

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.select { |n| n % 2 == 0 }
# now you have an array of even numbers, how cool is that
# [2, 4, 6, 8, 10]
# returns an empty array if there is no value that satisfy your logic
[1, 1, 1].select { |n| n % 2 == 0 }
# no even numbers
# []
```

### reject

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.reject { |n| n % 2 == 0 }
# reject if the number is even, so now we have an array of odd numbers
# [1, 3, 5, 7, 9]
```

### keep_if

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.keep_if { |n| n % 2 == 0 }
# numbers array holds only even numbers
# [2, 4, 6, 8, 10]
```

### delete_if

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.delete_if { |n| n % 2 == 0 }
# numbers array holds only odd numbers
# [1, 3, 5, 7, 9]
```

### drop_while

```ruby
numbers = [1, 2, 3, 1, 2, 3, 0]
numbers.drop_while { |n| n < 3 }
# is 3 less than 3, returns false, so drop 1, 2
# [3, 1, 2, 3, 0]
```

### reverse_each

```ruby
words = %w[first second third fourth fifth sixth]
str = ""
words.reverse_each {|word| str += "#{word} "}
p str #=> "sixth fifth fourth third second first "
```

## Boolean Enumerable methods

| No  | Name     | When to use                                                                          |
| --- | -------- | ------------------------------------------------------------------------------------ |
| 1   | all?     | when you want to check if all the elements satisfy your condition                    |
| 2   | any?     | when you want to check if at least one item satisfies your condition                 |
| 3   | one?     | when you want to check if precisely one element satisfies your requirement           |
| 4   | none?    | when you want to check if none of the items satisfy your condition, opposite of all? |
| 5   | empty?   | when you want to check if the object is empty or not                                 |
| 6   | include? | when you want to check if the element exists in the object                           |

### all?

```ruby
[2, 4, 6, 8, 10].all? { |num| num % 2 == 0 }
# true
[1, 4, 6, 8, 10].all? { |num| num % 2 == 0 }
# false
```

### any?

```ruby
[1, 3, 5, 7, 10].any? { |num| num % 2 == 0 }
# true
[1, 3, 5, 7, 19].any? { |num| num % 2 == 0 }
# false
```

### one?

```ruby
[1, 3, 2, 5, 7].one? { |num| num % 2 == 0 }
# true
[1, 3, 2, 5, 4].one? { |num| num % 2 == 0 }
# false
```

### none?

```ruby
[1, 3, 5, 7, 9].none? { |num| num % 2 == 0 }
# true
[2, 3, 5, 7, 9].none? { |num| num % 2 == 0 }
# false
```

### empty?

```ruby
[].empty?
# true
[1, 3, 5, 7, 9].empty?
# false
```

## Methods for combining

| No  | Name         | When to use                                                                                                                                                        |
|-----|--------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1   | &            | Returns a new Array containing each element found in both array and Array other_array; duplicates are omitted; items are compared using eql?:                      |
| 2   | intersection | Returns a new Array containing each element found both in self and in all of the given Arrays other_arrays; duplicates are omitted; items are compared using eql?: |
| 3   | +            | Returns an array containing all elements of self followed by all elements of a given array.                                                                        |
| 4   | -            | Returns an array containiing all elements of self that are not found in a given array.                                                                             |
| 5   | union        | Returns an array containing all elements of self and all elements of given arrays, duplicates removed.                                                             |
| 6   | difference   | Returns an array containing all elements of self that are not found in any of the given arrays.                                                                    |
| 7   | product      | Returns or yields all combinations of elements from self and given arrays.                                                                                         |




### &

```ruby
[0, 1, 2, 3] & [1, 2] # => [1, 2]
[0, 1, 0, 1] & [0, 1] # => [0, 1]
```

### intersection

```ruby
[0, 1, 2, 3].intersection([0, 1, 2], [0, 1, 3]) # => [0, 1]
[0, 0, 1, 1, 2, 3].intersection([0, 1, 2], [0, 1, 3]) # => [0, 1]
```

### +

```ruby
a = [0, 1] + [2, 3]
a # => [0, 1, 2, 3]
```

### -

```ruby
[0, 1, 1, 2, 1, 1, 3, 1, 1] - [1] # => [0, 2, 3]
[0, 1, 2, 3] - [3, 0] # => [1, 2]
[0, 1, 2] - [4] # => [0, 1, 2]
```

### union

```ruby
[0, 1, 2, 3].union([4, 5], [6, 7]) # => [0, 1, 2, 3, 4, 5, 6, 7]
[0, 1, 1].union([2, 1], [3, 1]) # => [0, 1, 2, 3]
[0, 1, 2, 3].union([3, 2], [1, 0]) # => [0, 1, 2, 3]
```

### difference

```ruby
[0, 1, 1, 2, 1, 1, 3, 1, 1].difference([1]) # => [0, 2, 3]
[0, 1, 2, 3].difference([3, 0], [1, 3]) # => [2]
[0, 1, 2].difference([4]) # => [0, 1, 2]
```


### product

```ruby
a = [0, 1, 2]
a1 = [3, 4]
p = a.product(a1)
p.size # => 6 # a.size * a1.size
p # => [[0, 3], [0, 4], [1, 3], [1, 4], [2, 3], [2, 4]]
```

## How to check if a value exists in an Array (`include?`)

```ruby
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
planets.include? "Mars"
# output
# true

planets.include? "Pluto"
# output
# false
```

## How to get array size

```ruby
# you can either use size or length, both are synonymous
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
planets.size
# output
# 8

planets.length
# output
# 8

```

## How to clear an Array

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.clear
# output
# []
```

## How to get the first element of an Array

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers[0]
# or
numbers.first
# output
# 1
```

## How to get the last element of an Array

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers[-1]
# or
numbers.last
# output
# 10
```

## How to merge two Arrays

```ruby
a = ["tom", "mot", "otm"]
b = [2, 3, 5]

a.zip(b)

# outout
# [["tom", 2], ["mot", 3], ["otm", 5]]
```

## How to sort an Array

```ruby
primes = [7, 2, 3, 5]
sorted_primes = primes.sort
puts "#{sorted_primes}"
# output
# [2, 3, 5, 7]
```

or in-place sort

```ruby
primes = [7, 2, 3, 5]
primes.sort!
puts "#{primes}"
# output
# [2, 3, 5, 7]
```

```ruby
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
planets.sort
# output
# ["Earth", "Jupiter", "Mars", "Mercury", "Neptune", "Saturn", "Uranus", "Venus"]

planets.sort_by { |p| p }
# output
# ["Earth", "Jupiter", "Mars", "Mercury", "Neptune", "Saturn", "Uranus", "Venus"]

planets.sort_by { |p| p.length }
# output
# ["Mars", "Earth", "Venus", "Saturn", "Uranus", "Neptune", "Jupiter", "Mercury"]
```

## How to get the maximum from an Array

```ruby
primes = [7, 2, 3, 5]
primes.max_by { |p| p }
# output
# 7
```

## How to get Array elements using a range

```ruby
# numbers[start..end], both index are inclusive
puts numbers[0..3]
# 1
# 2
# 3
# 4

# numbers[start..end], end index is exclusive
puts numbers[0...3]
# 1
# 2
# 3

# or numbers[start..length]
puts numbers[0, 1]
# 1
```

## How to get first n elements of an Array

```ruby
primes = [7, 2, 3, 5]
primes.take(3)
# [7, 2, 3]
```

## How to access an element

```ruby
primes = [7, 2, 3, 5]
primes.fetch(3)
# 5
# Fetch will throw an error if the element does not exist
primes.fetch(10)
# (index 10 outside of array bounds: -4...4)
# or get an default value
primes.fetch(10, -1)
# -1
```

## How to remove one or more elements of an Array

Remove first n elements.

```ruby
primes = [7, 2, 3, 5]
primes.drop(3)
# [5]
```

Remove first element.

```ruby
primes = [7, 2, 3, 5]
primes.shift
# [2, 3, 5]
```

Remove last element.

```ruby
primes = [7, 2, 3, 5]
primes.pop
# [7, 2, 3]
```

Remove element with an Index.

```ruby
primes = [7, 2, 3, 5]
primes.delete_at(-1)
# [7, 2, 3]
```

Remove all occurrences of an element.

```ruby
primes = [7, 2, 3, 5, 5]
primes.delete(5)
# [7, 2, 3]
```

## How to remove duplicate elements from an Array

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 1]
numbers.uniq
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

# Hash

A Hash maps each of its unique keys to a specific value. But it has certain similarities to an Array, but an Array index is always an Integer.  A Hash key can be (almost) any object.

Let's start with some basic operations. Below we have an example of how to initialize an empty hash.

```ruby
students = Hash.new
or
students = {}
```

Here we have an empty hash, without any key-value pairs. Now the question is, what if someone wants to access a key that does not exist in the hash? Well, the answer is nil, which is the default value.

```ruby
puts "#{students[:name]}"
# nil
```

Let’s add some values to the hash using symbols. There are two ways to declare symbols as keys.

```ruby
students = Hash.new
students = { name: 'John', email: 'john@col.com' }
puts "#{students[:name]}"
# or
students = Hash.new
students = { :name => 'John', :email => 'john@col.com' }
puts "#{students[:name]}"
```

I prefer the former one because I’ve to type less! How about initializing with default values, here we have initialized an empty hash with a default value of “no email” for every key.

```ruby
students = Hash.new("no data")
puts "#{students[:email]}"
# no email
# or
students = Hash.new
students.default = "no data"
puts "#{students[:email]}"
# no email
```

The Hash.new() creates a single default object for every key. That’s why by altering it for one key changes for other keys as well. For example, when we change the default value for the key id, it affects other unassigned key’s default value, in this case, name.

```ruby
students = Hash.new("no data")
students[:email] = "john@col.com"
puts "#{students[:email]}"
# john@col.com
puts "#{students[:id]}"
# no data
puts "#{students[:name]}"
# no data
students[:id].upcase!
puts "#{students[:email]}"
# john@col.com
puts "#{students[:id]}"
# NO DATA
puts "#{students[:name]}"
# NO DATA
```

If the above code behavior is not desired, you can use Hash.new {|hash, key| block } instead. This method creates a default object each time for different keys.

```ruby
students = Hash.new {|hash, key| hash[key] = "no data" }
students[:email] = "john@col.com"
puts "#{students[:email]}"
# john@col.com
puts "#{students[:id]}"
# no data
puts "#{students[:name]}"
# no data
students[:id].upcase!
puts "#{students[:email]}"
# john@col.com
puts "#{students[:id]}"
# NO DATA
puts "#{students[:name]}"
# no data
```

In short, Hash.new(some_value) sets a default value of some_value for every key that does not exist in the hash, Hash.new {|hash, key| block } creates a new default object for every key that does not exist in the hash, and Hash.new() or {} sets nil for every key.

## How to group by count

```ruby
numbers = [1, 1, 1, 2, 4, 65, 55, 54, 55]
freq_hash = numbers.each_with_object(Hash.new(0)) { |number, hash| hash[number] += 1 }
puts "#{freq_hash}"
# output
# {1=>3, 2=>1, 4=>1, 65=>1, 55=>2, 54=>1}
```

or

```ruby
numbers = [1, 1, 1, 2, 4, 65, 55, 54, 55]
freq_hash = Hash.new(0)
numbers.each { |number| freq_hash[number] += 1 }
puts "#{freq_hash}"
# output
# {1=>3, 2=>1, 4=>1, 65=>1, 55=>2, 54=>1}
```

or from Ruby 2.7+

```ruby
numbers = [1, 1, 1, 2, 4, 65, 55, 54, 55]
numbers.tally
# output
# {1=>3, 2=>1, 4=>1, 65=>1, 55=>2, 54=>1}
```

## What's the difference between Hash.new(0) and {}

```ruby
# Hash.new(0) sets a default value of 0 for every key that do not exist in the hash.
# {} or Hash.new() sets nil for every key

h1 = Hash.new(0)
h1[:count] += 1
puts "#{h1[:count]}"
# output
# 1

puts "#{h1[:new_key]}"
# output
# 0

h2 = {}
h2[:count] += 1
# error
"undefined method `+` for nil:NilClass"
```

## How to sort a Hash

```ruby
hash = {e: 2, d: 3, c: 5, b: 7, a: 11}
hash.sort
# output
# [[:a, 11], [:b, 7], [:c, 5], [:d, 3], [:e, 2]]

hash.sort_by { |k, v| k }
# output
# [[:a, 11], [:b, 7], [:c, 5], [:d, 3], [:e, 2]]

hash.sort_by { |k, v| v }
# output
# [[:e, 2], [:d, 3], [:c, 5], [:b, 7], [:a, 11]]
```

## How to get the maximum from a Hash

```ruby
hash = {e: 2, d: 3, c: 5, b: 7, a: 11}
hash.max_by { |k, v| v }
# output
# [:a, 11]
```
## Hash Built-in Methods

| **Method**                 | **Description**                                                                                                                                                               | **Example**                                                                                                            |
|----------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| **hash == other_hash**     | Tests whether two hashes are equal, based on whether they have the same number of key-value pairs, and whether the key-value pairs match the corresponding pair in each hash. | { apple: 1, orange: 2 } == { banana: 4 } <br/>=> false                                                                 |
| **hash.[key]**             | Using a key, references a value from hash. If the key is not found, returns a default value.                                                                                  | fruits = { apple: 1, orange: 2 } <br/> fruits[:apple]<br/> => 1                                                        |
| **hash.[key] = value**     | Associates the value given by value with the key given by key.                                                                                                                | fruits = { apple: 1, orange: 2 } <br/> fruits[:apple] = 5<br/> fruits = { apple: 5, orange: 2 }                        |
| **hash.clear**             | Removes all key-value pairs from hash.                                                                                                                                        | fruits = { apple: 1, orange: 2 }<br/> fruits.clear<br/> fruits = {}                                                    |
| **hash.delete(key)**       | Deletes a key-value pair from hash by key.                                                                                                                                    | fruits = { apple: 1, orange: 2 }<br/> fruits.delete(:apple)<br/> => fruits = { orange: 2 }                             |
| **hash.dig(key)**          | Finds and returns the object in nested objects that is specified by key                                                                                                       | fruits = { apple: 1, orange: 2 }<br/> fruits.dig(:orange) <br/> => 2                                                   |
| **hash.empty?**            | Tests whether hash is empty (contains no key-value pairs), returning true or false.                                                                                           | {}.empty? <br/> => true                                                                                                |
| **hash.key?(key)**         | Tests whether a given key is present in hash, returning true or false.                                                                                                        | fruits = { apple: 1, orange: 2 }<br/> fruits.key?(:pineapple) <br/> => false                                           |
| **hash.has_value?(value)** | Tests whether hash contains the given value.                                                                                                                                  | fruits = { apple: 1, orange: 2 }<br/> fruits.has_value?(2) <br/> => true                                               |
| **hash.index(value)**      | Returns the key for the given value in hash, nil if no matching value is found.                                                                                               | fruits = { apple: 1, orange: 2 }<br/> fruits.index(2) <br/> => :orange                                                 |
| **hash.inspect**           | Returns a pretty print string version of hash.                                                                                                                                | fruits = { apple: 1, orange: 2 }<br/> fruits.inspect <br/> => "{:apple=>1, :orange=>2}"                                |
| **hash.invert**            | Creates a new hash, inverting keys and values from hash; that is, in the new hash, the keys from hash become values and values become keys.                                   | fruits = { apple: 1, orange: 2 }<br/> fruits.invert<br/> => {1=>:apple, 2=>:orange}                                    |
| **hash.keys**              | Creates a new array with keys from hash.                                                                                                                                      | fruits = { apple: 1, orange: 2 }<br/> fruits.keys<br/> => [:apple, :orange]                                            |
| **hash.length**            | Returns the size or length of hash as an integer.                                                                                                                             | fruits = { apple: 1, orange: 2 }<br/> fruits.length <br/> => 2                                                         |
| **hash.size**              | Returns the size or length of hash as an integer.                                                                                                                             | fruits = { apple: 1, orange: 2 }<br/> fruits.size <br/> => 2                                                           |
| **hash.shift**             | Removes a key-value pair from hash, returning it as a two-element array.                                                                                                      | fruits = { apple: 1, orange: 2 }<br/> fruits.shift <br/> => [:apple, 1]<br/> fruits <br/> => {:orange=>2}              |
| **hash.sort**              | Converts hash to a two-dimensional array containing arrays of key-value pairs, then sorts it as an array.                                                                     | fruits = { pineapple: 5, apple: 1, orange: 2 } <br/> apple: 1, orange: 2 }=> {:pineapple=>5, :apple=>1, :orange=>2}    |
| **hash.to_a**              | Creates a two-dimensional array from hash. Each key/value pair is converted to an array,  and all these arrays are stored in a containing array.                              | fruits = { pineapple: 5, apple: 1, orange: 2 } <br/> fruits.to_a <br/> => [[:pineapple, 5], [:apple, 1], [:orange, 2]] |
| **hash.values**            | Returns a new array containing all the values of hash.                                                                                                                        | fruits = { pineapple: 5, apple: 1, orange: 2 } <br/> fruits.values <br/> => [5, 1, 2]                                  |


# Loop

The loops in Ruby are :

1. while loop
2. for loop
3. do..while loop
4. until loop

## while loop

The condition which is to be tested, given at the beginning of the loop
and all statements are executed until the given boolean condition satisfies.
When the condition becomes false, the control will be out from the while loop.
It is also known as Entry Controlled Loop because the condition to be tested
is present at the beginning of the loop body. So basically, while loop is
used when the number of iterations is not fixed in a program.

```ruby
# Ruby program to illustrate 'while' loop

# variable count
count = 4

# using while loop
# here conditional is count i.e. 4
while count >= 1

  # statements to be executed
  puts "Ruby Cheatsheet"
  count = count - 1

  # while loop ends here
end
```

Output

```
Ruby Cheatsheet
Ruby Cheatsheet
Ruby Cheatsheet
Ruby Cheatsheet
```

## for loop

“for” loop has similar functionality as while loop but with different syntax.
for loop is preferred when the number of times loop statements are to be executed
is known beforehand. It iterates over a specific range of numbers.
It is also known as Entry Controlled Loop because the condition to be tested
is present at the beginning of the loop body.

```ruby
# Ruby program to illustrate 'for'
# loop using range as expression

text = "Ruby Cheatsheet"

# using for loop with the range
for count in 1..5 do

  puts text

end

```

Output

```
Ruby Cheatsheet
Ruby Cheatsheet
Ruby Cheatsheet
Ruby Cheatsheet
Ruby Cheatsheet
```

## do..while Loop

do while loop is similar to while loop with the only difference that
it checks the condition after executing the statements, i.e it will
execute the loop body one time for sure. It is a Exit-Controlled loop
because it tests the condition which presents at the end of the loop body.

```ruby
# Ruby program to illustrate 'do..while'loop

# starting of do..while loop
loop do

  puts "Ruby Cheatsheet"

  val = '7'

  # using boolean expressions
  if val == '7'
    break
  end

  # ending of ruby do..while loop
end
```

Output

```
Ruby Cheatsheet
```

## until Loop

Ruby until loop will executes the statements or code till the given
condition evaluates to true. Basically it’s just opposite to the while
loop which executes until the given condition evaluates to false.
An until statement’s conditional is separated from code by the
reserved word do, a newline, or a semicolon.

```ruby
var = 7

# using until loop
# here do is optional
until var == 11 do

  # code to be executed
  puts var * 10
  var = var + 1

  # here loop ends
end
```

Output

```
70
80
90
100
```

## How to break out from loop

**break** terminates the most internal loop.
Terminates a method with an associated block
if called within the block (with the method returning nil).

```ruby
# by using break keyword
salary = [399, 234, 566, 533, 233]
salary.each do |s|
  break if s == 566

  puts s
end
#output
# 399
# 234
```

## How to skip inside a loop

```ruby
# by using next keyword
salary = [399, 234, 566, 533, 233]
salary.each do |s|
  next if s == 533

  puts s
end
# output
# 399
# 234
# 566
# 233
```

## How to repeat the current iteration

```ruby
data = [456, 3000]
retry_count = 0
status = "network failure"
sum = 0
data.each do |d|
    if retry_count == 3
        status = "connection established"
        retry_count = 0
        redo
    elsif status == "network failure" and retry_count < 5
        puts "network failure #{retry_count}"
        retry_count += 1
        redo
    elsif status == "connection established"
        puts d
        sum += d
    end
end

# output of sum
# 3456
```

## How to restart a loop

```ruby
numbers = [2, 2, 44, 44]
sum = 0
begin
    numbers.each do |s|
        if rand(1..10) == 5
            puts "hi 5, let's do it again!"
            sum = 0
            raise "hi 5"
        end
        puts s
        sum += s
    end
rescue
    retry
end
```

# Classes

```ruby
class Person
    # when you create a new object, it looks for a method named initialize and executes it, like a constructor in java
    # def initialize(name, number)
    #    @name = name
    #    @number = number
    # end

    # instance variable
    # @name

    # class variable
    # @@count

    # attr_accessor acts as a getter and setter for the following instance attributes
    attr_accessor :name, :number

    # class variable must be initialized
    @@count = 0

    def self.count
        @@count
    end

    def self.count=(count)
        @@count = count
    end

    def initialize
        @@count += 1
    end
end

# create an instance of the Person class
p1 = Person.new

# set attributes of the Person class
p1.name = "Yukihiro Matsumoto"
p1.number = 9999999999

# get attributes of the Person class
puts "#{p1.name}"
puts "#{p1.number}"
puts "#{Person.count}"

# Yukihiro Matsumoto
# 9999999999
# 1

p2 = Person.new
p2.name = "Yukihiro Matsumoto"
p2.number = 9999999999

# get attributes of the Person class
puts "#{p2.name}"
puts "#{p2.number}"
puts "#{Person.count}"

# Yukihiro Matsumoto
# 9999999999
# 2

# set class variable
Person.count = 3
puts "#{Person.count}"
# 3
```

## How to inherit a class

```ruby
class Person
    attr_accessor :name, :number
end

# use < symbol to inherit methods and attributes from the parent class
class Student < Person
    attr_accessor :id
end

s = Student.new

s.name = "James Bond"
s.number = 700
s.id = 678

puts "#{p.name}"
James Bond

puts "#{p.number}"
700

puts "#{p.id}"
678
```

## How to check instance type

```ruby
# Returns true if the object is an instance of the given class, not a subclass or superclass
class Vehicle; end
class Car < Vehicle; end
class Audi < Car; end

car = Car.new
car.instance_of? Vehicle
false
car.instance_of? Car
true
car.instance_of? Audi
false

a = 7
a.instance_of? Integer
true
a.instance_of? Numeric
false
```

## Print all method names of a class

```ruby
puts (String.methods).sort
# Exclude methods that are inherited from Object class
puts (String.methods - Object.public_instance_methods).sort
```

## Check if a Class has a particular method

```ruby
String.respond_to?(:prepend)
true
String.respond_to?(:append)
false
```

# Modules

Modules are used for combining similar methods, so that other classes or modules can use it. You can not instantiate a module (like abstract classes in Java)

```ruby
module MyRandomHelper
    def roll_dice
      rand(1..6)
    end
end

class Person
    attr_accessor :name, :number
end

class Player < Person
    include MyRandomHelper
    attr_accessor :score
end

p = Player.new
p.roll_dice
```

```ruby
TODO
```

# Operator Overloading

```ruby
class Vector
    attr_accessor :x, :y

     def initialize(x, y)
        @x = x
        @y = y
    end

    def +(second)
        Vector.new(@x + second.x, @y + second.y)
    end

    def -(second)
        Vector.new(@x - second.x, @y - second.y)
    end

    def *(second)
        Vector.new(@x * second.x, @y * second.y)
    end

    def /(second)
        Vector.new(@x / second.x, @y / second.y)
    end

    def to_s
        return "(#{@x}, #{@y})"
    end

end
```

```ruby
v1 = Vector.new(5, 10)
v2 = Vector.new(4, 9)

puts v1 + v2
puts v1 - v2
puts v1 * v2
puts v1 / v2
```

# Exception Handling

```ruby
begin
    puts 'before the raise'
    raise 'raise an exception'
    puts 'after the raise'
rescue
    puts 'rescued'
end
```

```ruby
begin
    raise StandardError, 'standard error occurred'
rescue StandardError => e
    puts "#{e.class}: #{e.message}"
    puts e.backtrace.inspect
end
```

`$!` contains the raised exception
`$@` contains the exception backtrace

```ruby
begin
    raise StandardError, 'standard error occurred'
rescue StandardError
    puts "#{$!.class}: #{$!.message}"
    puts "#{$@}"
end
```

`retry` re-executes the code inside begin end block

```ruby
retry_count = 1

begin
    puts "retry count: #{retry_count}"
    retry_count += 1
    raise 'raise an exception'
rescue
    retry if retry_count <= 5
end
```

Custom exception

```ruby
class MyException < Exception
end

begin
    raise MyException, 'my exception occurred'
rescue MyException
    puts "#{$!.class}: #{$!.message}"
    puts "#{$@}"
end
```

Catch multiple exceptions

```ruby
begin
    raise 'i am a string'.call
rescue NoMethodError => e
    puts "#{$!.class}: #{$!.message}"
rescue ZeroDivisionError => e
    puts "#{$!.class}: #{$!.message}"
end

```

[Further readings][12]

# Regular expression

```ruby
a = "Better a diamond with a flaw than a pebble without"
a[/(\w+)/]

# output
# "Better"

a[/(\w+) (\w+)/]

# output
# "Better a"

a[/(?<one>\w+) (?<two>\w+)/, :two]
# output
# "a"
```

# Miscellaneous

## How to generate random number

```ruby
rand(max=0)

# when calling it without an argument, rand returns a floating point number between 0.0 (including) and 1.0 (excluding), under the hood max.to_i.abs == 0
rand

# output
# 0.055758056734957595

# when the argument value is greater than or equal to 1, rand returns a integer between 0 (including) and that number (excluding), under the hood max.to_i.abs >= 1
rand(100)

# output
# 7

# generating number between 2 numbers both inclusive
rand(150..170)

# output
# 167

# generating number between 2 numbers, the last number is not inclusive
rand(1...10)

# output
# 4
```

## Check the syntax of a Ruby file

```ruby
ruby -c filename.rb
```

## Concatenate String in a loop

```ruby
words = ["Lorem", "ipsum", "dolor", "sit", "amet"]
words.map { |word| word.downcase }.join(' ')

# output
# "lorem ipsum dolor sit amet"
```

## CamelCase String split

```ruby
sentence = "ThereIsNoSpoon"
words = sentence.split(/(?=[A-Z])/)

# output
# ["There", "Is", "No", "Spoon"]
```

## Ruby scripts

<a href="https://github.com/lifeparticle/Ruby-Cheatsheet/tree/master/Scripts"><img alt="ruby-scripts" src="https://img.shields.io/badge/ruby-scripts-red.svg?style=flat"/></a>

# Platforms that supports Ruby

1. [Heroku](https://www.heroku.com/ruby)
2. [Vercel](https://vercel.com/docs/serverless-functions/supported-languages#ruby)
3. [AWS Lambda](https://docs.aws.amazon.com/lambda/latest/dg/lambda-ruby.html)
4. [Fly.io](https://fly.io/)

# Ruby frameworks

1. [Ruby on Rails](https://rubyonrails.org/)
2. [Sinatra](http://sinatrarb.com/)
3. [Padrino](http://padrinorb.com/)

# My Ruby Articles

1. [A Beginner’s Guide To Ruby](https://medium.com/@lifeparticle/a-beginners-guide-to-ruby-810f230c53da)
2. [17 Useful Ruby String Methods to Clean and Format Your Data](https://towardsdatascience.com/17-useful-ruby-string-methods-to-clean-and-format-your-data-9c9147ff87b9)
3. [How to Deploy a Ruby Serverless Function to Vercel](https://towardsdatascience.com/how-to-deploy-a-ruby-serverless-function-to-vercel-da8c3581f7c2)
4. [Useful Ruby Array Methods to Manage Your Data](https://towardsdatascience.com/useful-ruby-array-methods-to-manage-your-data-4d2813c63ccf)
5. [An Introduction to Ruby Hashes](https://towardsdatascience.com/an-introduction-to-ruby-hash-1c1c4b2dd905)
6. [How to Dockerize an Existing Sinatra Application](https://towardsdatascience.com/how-to-dockerize-an-existing-sinatra-application-3a6943d7a428)
7. [How To Dockerize an Existing Ruby on Rails Application](https://towardsdatascience.com/how-to-dockerize-an-existing-ruby-on-rails-application-3eb6d16ec392)
8. [How To Parse Data Using Ruby and Selenium](https://towardsdatascience.com/how-to-parse-data-using-ruby-and-selenium-5cf11605340c)

# Books and other resources

1. [Ruby doc](https://ruby-doc.org/)
2. [How to use Ruby’s English and/or operators without going nuts](http://www.virtuouscode.com/2014/08/26/how-to-use-rubys-english-andor-operators-without-going-nuts/)
3. [What is attr_accessor in Ruby?](https://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby)
4. [Ruby Module Mixin Awesomeness](https://johnmcaliley.wordpress.com/2010/03/10/ruby-module-mixin-awesomeness/)
5. [Tutorials](https://www.cosmiclearn.com/ruby/index.php)
6. [Pattern matching - New feature in Ruby 2.7](https://speakerdeck.com/k_tsj/pattern-matching-new-feature-in-ruby-2-dot-7?slide=24)
7. [Awesome Ruby Blogs](https://github.com/Yegorov/awesome-ruby-blogs)
8. [Ruby Scripts](https://github.com/jakewmeyer/Ruby-Scripts)
9. [Awesome Ruby](https://github.com/markets/awesome-ruby)
10. [Ruby Bookmarks](https://github.com/dreikanter/ruby-bookmarks)
11. [Code With Jason](https://www.codewithjason.com/articles/)

# Bug Reports and Feature Requests

Please create an issue with as much information you can. Thank you.

# Contribution Guidelines

<a href="https://github.com/lifeparticle/Ruby-Cheatsheet/blob/master/CONTRIBUTING.md"><img alt="contribution guidelines" src="https://img.shields.io/badge/contribution-guidelines-brightgreen.svg?style=flat"/></a>

# Author

Mahbub Zaman (https://mahbub.ninja)

# License

MIT License

![Jul-16-2019 22-21-31](https://user-images.githubusercontent.com/1612112/61294008-41e94980-a818-11e9-9ff0-656ae53c8360.gif)

<!-- doc_links starts -->

[1]: https://ruby-doc.org/core-3.1.2/doc/keywords_rdoc.html
[2]: https://ruby-doc.org/core-3.1.2/Integer.html
[3]: https://ruby-doc.org/core-3.1.2/Float.html
[4]: https://ruby-doc.org/core-3.1.2/String.html
[5]: https://ruby-doc.org/core-3.1.2/Array.html
[6]: https://ruby-doc.org/core-3.1.2/Hash.html
[7]: https://ruby-doc.org/core-3.1.2/TrueClass.html
[8]: https://ruby-doc.org/core-3.1.2/FalseClass.html
[9]: https://ruby-doc.org/core-3.1.2/Symbol.html
[10]: https://ruby-doc.org/core-3.1.2/Range.html
[11]: https://ruby-doc.org/core-3.1.2/NilClass.html
[12]: https://ruby-doc.org/core-3.1.2/Exception.html

<!-- doc_links ends -->
