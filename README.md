<div align="center">
<pre>
    ____        __                ________               __       __              __ 
   / __ \__  __/ /_  __  __      / ____/ /_  ___  ____ _/ /______/ /_  ___  ___  / /_
  / /_/ / / / / __ \/ / / /_____/ /   / __ \/ _ \/ __ `/ __/ ___/ __ \/ _ \/ _ \/ __/
 / _, _/ /_/ / /_/ / /_/ /_____/ /___/ / / /  __/ /_/ / /_(__  ) / / /  __/  __/ /_  
/_/ |_|\__,_/_.___/\__, /      \____/_/ /_/\___/\__,_/\__/____/_/ /_/\___/\___/\__/  
                  /____/                                                             

The missing Cheatsheet for Ruby.
</pre>
</div>

Table of Contents
============
   * [Installation](#installation)
      * [How to install ruby gem manager, bundler gem](#how-to-install-ruby-gem-manager-bundler-gem)
   * [Comment](#comment)
   * [Operators](#operators)
      * [Logical operators](#logical-operators)
      * [Bitwise operators](#bitwise-operators)
      * [Arithmetic operators](#arithmetic-operators)
      * [Comparison operators](#comparison-operators)
      * [Assignment operators](#assignment-operators)
   * [Variables and Scope](#variables-and-scope)
      * [How to check scope of variables](#how-to-check-scope-of-variables)
   * [Conditional structures](#conditional-structures)
      * [If elsif else expression](#if-elsif-else-expression)
      * [unless expression](#unless-expression)
      * [Shorthand](#shorthand)
      * [Case Expressions](#case-expressions)
   * [Data types](#data-types)
      * [How to check data type](#how-to-check-data-type)
   * [String](#string)
      * [How to convert string to lower or upper case](#how-to-convert-string-to-lower-or-upper-case)
      * [Helpful methods](#helpful-methods)
   * [Range](#range)
      * [Helpful methods](#helpful-methods-1)
      * [How to use step with Range](#how-to-use-step-with-range)
   * [Methods](#methods)
      * [How to declare a method](#how-to-declare-a-method)
      * [How to call a method](#how-to-call-a-method)
      * [How to define default value for a method parameter](#how-to-define-default-value-for-a-method-parameter)
      * [How to pass variable length argument to a method parameter](#how-to-pass-variable-length-argument-to-a-method-parameter)
   * [Blocks](#blocks)
   * [Lambdas](#lambdas)
   * [Procs](#procs)
   * [Array](#array)
      * [How to iterate an Array](#how-to-iterate-an-array)
         * [each](#each)
         * [each_with_index](#each_with_index)
         * [each_with_object](#each_with_object)
         * [each_index](#each_index)
         * [map](#map)
         * [select](#select)
         * [reject](#reject)
         * [inject](#inject)
         * [reduce](#reduce)
         * [collect](#collect)
         * [detect](#detect)
         * [while](#while)
         * [until](#until)
         * [for](#for)
         * [times](#times)
         * [upto](#upto)
         * [downto](#downto)
         * [step](#step)
      * [How to get array size](#how-to-get-array-size)
      * [How to check if a value exist in an Array](#how-to-check-if-a-value-exist-in-an-array)
      * [How to clear an Array](#how-to-clear-an-array)
      * [How to get the last element of an Array](#how-to-get-the-last-element-of-an-array)
   * [Hash](#hash)
      * [How to group by count](#how-to-group-by-count)
      * [What's the difference between Hash.new(0) and {}](#whats-the-difference-between-hashnew0-and-)
   * [Loop](#loop)
      * [How to break out from loop](#how-to-break-out-from-loop)
      * [How to skip inside loop](#how-to-skip-inside-loop)
      * [How to repeat the current iteration](#how-to-repeat-the-current-iteration)
      * [How to restart a loop](#how-to-restart-a-loop)
   * [Classes](#classes)
      * [How to inherit a class](#how-to-inherit-a-class)
      * [How to check instance type](#how-to-check-instance-type)
   * [Modules](#modules)
   * [Miscellaneous](#miscellaneous)
      * [How to generate random number](#how-to-generate-random-number)
   * [Books and other resources](#books-and-other-resources)
   * [Bug Reports and Feature Requests](#bug-reports-and-feature-requests)
   * [Author](#author)
   * [License](#license)
      
Installation
============
If you don't want to install ruby natively you can use [docker](https://www.docker.com/).

```
docker run -it --rm ruby:latest
# check which version of ruby you're running
RUBY_VERSION
```

How to install ruby gem manager, bundler gem
-----

```
# access the bash for executing the following commands
docker run -it --rm ruby:latest bash
```

```
gem install bundler
```

```
# specify your gems in a Gemfile in your project’s root

source 'https://rubygems.org'
gem 'nokogiri'
gem 'rack', '~>1.1'
gem 'rspec', :require => 'spec'
```

```
# install all the gems in the Gemfile
bundle install
```


Comment
============

```ruby
# single line comment

=begin
multiline
comment
=end
```

Operators
============
Logical operators
-----
| No | operator |
|---|---|
| 1 | and   | 
| 2 | or    |
| 3 | not   |
| 4 | &&    |
| 5 | \|\|  |
| 6 | !     |


Bitwise operators
-----
| No | operator |
|---|---|
| 1 | &     | 
| 2 | \|    |
| 3 | ^     |
| 4 | ~     |
| 5 | <<    |
| 6 | >>    |

Arithmetic operators
-----
| No | operator |
|---|---|
| 1 | +     | 
| 2 | -     |
| 3 | *     |
| 4 | /     |
| 5 | %     |
| 6 | **    |

Comparison operators
-----
| No | operator |
|---|---|
| 1  | ==     | 
| 2  | !=     |
| 3  | >      |
| 4  | <      |
| 5  | >=     |
| 6  | <=     |
| 7  | <=>    |
| 8  | ===    |
| 9  | eql?   |
| 10 | equal? |

Assignment operators
-----
| No | operator |
|---|---|
| 1 | =     | 
| 2 | +=    |
| 3 | -=    |
| 4 | *=    |
| 5 | /=    |
| 6 | %=    |
| 7 | **=   |


Variables and Scope
============
The first character determines the scope.

| No | name | scope | example | note | 
|---|---|---|---|---|
| 1 | [a-z] or _  | local             | count = 10 or _count = 10 | TODO                                                    |
| 2 | @           | instance variable | @id = []                  | TODO                                                    |
| 3 | @@          | class variable    | @@name = []               | TODO                                                    |
| 4 | $           | global variable   | $version = "0.8.9"        | TODO                                                    |
| 5 | [A-Z]       | constant          | PI = 3.14                 | you can change the constant but you will get a warining |

How to check scope of variables 
-----
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

Conditional structures
============

If elsif else expression
-----

```ruby
temp = 19

if temp >= 25
  puts "hot"
elsif temp < 25 && temp >= 18
  puts "normal"
else
  puts "cold"
end

#output
normal
```

unless expression
-----

```ruby
# unless is opposite of if, evaluates when the statement is false

name = "rob"

unless name == "bob"
  puts "hello stranger"
else
  puts "hello bob"
end

#output
hello stranger
```

Shorthand
-----

```ruby
count = 1
puts "hello world" if count == 1
#output
hello world

count = 2
puts "hello universe" if count != 1
# or using unless
puts "hello universe" unless count == 1
#output
hello universe
```

Case Expressions
-----

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

puts marks
# output
86
```
Data types
============

| No | Type  | Example  | Class  | Doc  |
|---|---|---|---|---|
| 1 | Integer  | > a = 17                       |> a.class <br> > Integer <br> > a.class.superclass <br> > Numeric | [link](https://ruby-doc.org/core-2.6.3/Integer.html)  |
| 2 | Float    | > a = 87.23                    |> a.class <br> > Float <br> > a.class.superclass <br> > Numeric   | [link](https://ruby-doc.org/core-2.6.3/Float.html)    |
| 3 | String   | > a = "Hello universe"         |> a.class <br> > String                                           | [link](https://ruby-doc.org/core-2.6.3/String.html)   |
| 4 | Array    | > a = [12, 34]                 |> a.class <br> > Array                                            | [link](https://ruby-doc.org/core-2.6.3/Array.html)    |
| 5 | Hash     | > a = {type: "tea", count: 10} |> a.class <br> > Hash                                             | [link](https://ruby-doc.org/core-2.6.3/Hash.html)     |
| 6 | Boolean  | > a = false<br>> a = true      |> a.class <br> > FalseClass <br> > a.class <br> > TrueClass       | [TrueClass](https://ruby-doc.org/core-2.6.3/TrueClass.html) <br> [FalseClass](https://ruby-doc.org/core-2.6.3/FalseClass.html)  |
| 7 | Symbol   | > a = :status                  |> a.class <br> > Symbol                                           | [link](https://ruby-doc.org/core-2.6.3/Symbol.html)   |
| 8 | Range    | > a = 1..3                     |> a.class <br> > Range                                            | [link](https://ruby-doc.org/core-2.6.3/Range.html)    |
| 9 | Nill     | > a = nil                      |> a.class <br> > NilClass                                         | [link](https://ruby-doc.org/core-2.6.3/NilClass.html) |

How to check data type
-----

```ruby
# both are synonymous
a = 37
a.kind_of? Integer 
true
a.is_a? Integer
true
```

String
============

How to convert string to lower or upper case
-----

| No | Method name | output |
|---|---|---|
| 1 | downcase   | "HELLO World".downcase <br> "hello world"   |
| 2 | upcase     | "hello worlD".upcase <br> "HELLO WORLD"     |
| 3 | capitalize | "hEllo wOrlD".capitalize <br> "Hello world" |
| 4 | swapcase   | "hEllo WOrlD".swapcase <br> "HeLLO woRLd"   |

Helpful methods
-----

| No | Method name | output |
|---|---|---|
| 1 | length                           | "HELLO World".length <br> 11                                                                                                 |
| 2 | reverse                          | "hello worlD".reverse <br> "Dlrow olleh"                                                                                      |
| 3 | include? other_str               | "hEllo wOrlD".include? "w" <br> true                                                                                               |
| 4 | gsub(pattern, replacement)       | "hEllo wOrlD".gsub(" ", "_") <br> "hEllo_wOrlD"                                                    |
| 5 | gsub(pattern, hash)              | "organization".gsub("z", 'z' => 's') <br>"organisation"                                            |
| 6 | gsub(pattern) { \|match\| block} | "Price of the phone is 1000 AUD".gsub(/\d+/) { \|s\| '$'+s } <br>"Price of the phone is $1000 AUD" |

Range
============

Ranges allow to declare data with a beginning and an end, it has two operators to generate ranges.

```ruby
# .. for creating inclusive ranges

range = 1..10
range.to_a
# output
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

```ruby
# ... for creating exclusive ranges

range = 1...10
range.to_a
# output
[1, 2, 3, 4, 5, 6, 7, 8, 9]
```

Helpful methods
-----
| No | Method name | output |
|---|---|---|
| 1 | cover?   | (1..5).cover?(5) <br> true          |
| 2 | end      | ('a'..'z').end <br> "z"             |
| 3 | first    | (1..5).first <br> 1                 |
| 4 | first(3) | ('A'..'Z').first(2) <br> ["A", "B"] |
| 5 | eql?     | ((0..2).eql?(0..5) <br> false       |


How to use step with Range
-----
```ruby
(1..20).step(2) { |number| puts "#{number}"}
# output
1
3
5
7
9
11
13
15
17
19
```


Methods
============

How to declare a method
-----

```ruby
# In Ruby last statement evaluated is the return value of that method
# both methods does the same thing, depend on your preference you can choose either of them
def method_name(parameter1, parameter2)
   puts "#{parameter1} #{parameter2}" 
   parameter1 + parameter2
end

res = method_name(20, 10)
# output
30
```

```ruby
def method_name(parameter1, parameter2)
   puts "#{parameter1} #{parameter2}" 
   return parameter1 + parameter2
end
# output
30
```

How to call a method
-----

```ruby
res = method_name(parameter1, parameter2)
# In Ruby you can call methods without parentheses
res = method_name parameter1, parameter2
```

How to define default value for a method parameter
-----

```ruby
def method_name(parameter1, parameter2, type = "ADD")
   puts "#{parameter1} #{parameter2}" 
   return parameter1 + parameter2 if type == "ADD"
   return parameter1 - parameter2 if type == "SUB"
end

res = method_name(parameter1, parameter2)
# output
30
```

How to pass variable length argument to a method parameter
-----
```ruby
def method_name(type, *values)
   return values.reduce(:+) if type == "ADD"
   return values.reduce(:-) if type == "SUB"
end

numbers = [2, 2, 2, 3, 3, 3]

res = method_name("ADD", *numbers)
# output
15

res = method_name("SUB", *numbers)
# output
-11

# or you can provide the values like this
res = method_name("ADD", 2, 2, 2, 3, 3, 3)
# output
15
```

Blocks
============
TODO

Lambdas
============
TODO

Procs
============
TODO

Array
============

How to iterate an Array
-----
There are multiple ways you can iterate an Array. 

| No | Name | When to use |
|---|---|---|
| 1  | each             | when you want to just iterate                                                                                                                                                                                                                                        | 
| 2  | each_with_index  | when you want the both index and value                                                                                                                                                                                                                               | 
| 3  | each_with_object | when you want to build a hash or reduce a collection to one object. Iterates the given block for each element with an arbitrary object given and returns the initial given object. It only works with mutable object like hash but not immutable object like integer |
| 4  | each_index       | when you want just the indexes                                                                                                                                                                                                                                       |
| 5  | map              | returns array containing the values returned by the block                                                                                                                                                                                                            |
| 6  | select           | adds a value to a new array if your block returns true, returns ```[]``` otherwise. helpful when you are looking for a subset                                                                                                                                        |
| 7  | reject           | removes a value from a new array if your block returns true, returns ```[]``` otherwise. helpful when you are looking for a subset                                                                                                                                   |
| 8  | inject           | when you want a single value. helpful when you want to accumulate, concatenate                                                                                                                                                                                       |
| 9  | reduce           | reduce and inject methods are aliases                                                                                                                                                                                                                                |
| 10 | collect          | same as map                                                                                                                                                                                                                                                          | 
| 11 | detect           | returns the first item in the array if your block returns true, returns ```nil``` otherwise. helpful when you are looking for something based on a business logic                                                                                                    |
| 12 | while            | when you want to iterate for certain number of times                                                                                                                                                                                                                 |
| 13 | until            | when you want to iterate until something happens                                                                                                                                                                                                                     |
| 14 | for              | similar to each                                                                                                                                                                                                                                                      |
| 15 | times            | when you want to iterate ```n``` number of times                                                                                                                                                                                                                     |
| 16 | upto             | when you want to iterate upto ```n```, starting from ```m```, both inclusive, where ```n >= m```. when ```n < m``` it will run zero times                                                                                                                            |
| 17 | downto           | when you want to iterate downto ```n```, starting from ```m```, both inclusive, where ```n <= m```. when ```n > m``` it will run zero times                                                                                                                          |
| 18 | step             | when you want to iterate upto or downto ```n``` by incrementing or decrementing ```x``` steps starting from ```m```, both inclusive. default value of step is ```1``` and for ```n``` it's infinity                                                                  |

### each

```ruby
# when you have singleline block
salary = [399, 234, 566, 533, 233]
salary.each { |s| puts s }
# output
399
234
566
533
233
```

```ruby
# when you have multiline block, you can replace the curly brackets {} with do and end
salary.each do |s|
  a = 10
  res = a * s
  puts res
end
# output
3990
2340
5660
5330
2330

# or you can do the same thing just using curly brackets {} and semicolons as separators instead of new lines
salary.each { |s| a = 10 ; res = a * s ; puts res }
```

### each_with_index

```ruby
salary = [399, 234, 566, 533, 233]
salary.each_with_index { |value, index| puts "#{index} #{value}" }
# output
0 399
1 234
2 566
3 533
4 233
```

### each_with_object

```ruby
colors = [{color: "red", count: 3}, {color: "red", count: 5}, {color: "black", count: 4}]
colors.each_with_object(Hash.new(0)) { |color, hash| hash["color_"+color[:color]] = color[:color].upcase; hash["count_"+color[:color]] += color[:count] }
# output
{"color_red"=>"RED", "count_red"=>8, "color_black"=>"BLACK", "count_black"=>4}

[1, 2, 3].each_with_object(0) { |number, sum| sum += number}
# output
0
# beacuse 0 is immutable, since the initial object is 0, the method returns 0
```

### each_index

```ruby
salary = [399, 234, 566, 533, 233]
salary.each_index { |i| puts i}
# output
0
1
2
3
4
```

### map

```ruby
salary = [399, 234, 566, 533, 233]
salary.map { |s|  s * 10  }
# returns
[3990, 2340, 5660, 5330, 2330]

# on the other hand each returns the originl values
salary = [399, 234, 566, 533, 233]
# returns
[399, 234, 566, 533, 233]
```

### select

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.select { |n| n % 2 == 0 }
# now you have an array of even numbers, how cool is that
[2, 4, 6, 8, 10]
# returns an empty array if there is no value that satisfy your logic
[1, 1, 1].select { |n| n % 2 == 0 }
# no even numbers
[]
```

### reject

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.reject { |n| n % 2 == 0 }
# reject if the number is even, so now we have an array of odd numbers
[1, 3, 5, 7, 9]
```

### inject

```ruby
numbers = [2, 2, 2, 2, 2]
numbers.inject{ |res, n| res + n }
# output is the result of sum of all numbers
# if you do not set an initial value for res, then the first element of the array is used as the initial value of res
10

# now set the value of res with 11
numbers = [2, 2, 2, 2, 2]
numbers.inject(11) { |res, n| res + n }
# so 11 + 2, 13 + 2, 15 + 2, 17 + 2 and 19 + 2
# 21

# using symbol
numbers = [2, 2, 2, 2, 2]
numbers.inject(:+)
# output
10

# using initial value and a symbol
numbers = [2, 2, 2, 2, 2]
numbers.inject(11, :+)
# output
21
```

### reduce

```ruby
numbers = [2, 2, 2, 2, 2]
numbers.reduce(11, :+)
# output
21
```

### collect

```ruby
salary = [399, 234, 566, 533, 233]
salary.collect { |s| s > 400 }
# output
[false, false, true, true, false]
```

### detect

```ruby
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
planets.detect { |name| name.start_with?("E") and name.end_with?("h") }
# output
Earth

salary = [399, 234, 566, 533, 233]
salary.detect { |s| s > 1000 }
# output
nil
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

### for

```ruby
for value in [2, 3, 5, 7]
  puts value
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
2
3
5
7
```

### upto

```ruby
data_sample = [2, 3, 5, 7]
0.upto((data_sample.size - 1) / 2) { |index| puts "#{data_sample[index]}" }
# output
2
3
```

### downto

```ruby
data_sample = [2, 3, 5, 7]
(data_sample.size - 1).downto(data_sample.size / 2) { |index| puts "#{data_sample[index]}" }
# output
7
5
```

### step

```ruby
1.step(20, 2) { |number| puts "#{number}"}
#output
1
3
5
7
9
11
13
15
17
19
```

```ruby
19.step(1, -2) { |number| puts "#{number}"}
#output
19
17
15
13
11
9
7
5
3
1
```

How to get array size
-----

```ruby
# you can either use size or length, both are synonymous
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
planets.size
# output
8

planets.length
# output
8
```

How to check if a value exist in an Array
-----

```ruby
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
planets.include? "Mars"
# output
true

planets.include? "Pluto"
# output
false
```

How to clear an Array
-----

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.clear
# output
[]
```

How to get the last element of an Array
-----

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers[-1]
# or
numbers.last
# output
10
```

Hash
============
TODO

How to group by count
-----

```ruby
numbers = [1, 1, 1, 2, 4, 65, 55, 54, 55]
freq_hash = numbers.each_with_object(Hash.new(0)) { |number, hash| hash[number] += 1 }
puts "#{freq_hash}"
# output
{1=>3, 2=>1, 4=>1, 65=>1, 55=>2, 54=>1}
```

What's the difference between Hash.new(0) and {}
-----

```ruby
# Hash.new(0) sets a default value of 0 for every key that do not exist in the hash.
# {} or Hash.new() sets nil for every key

h1 = Hash.new(0)
h1[:count] += 1
puts "#{h1[:count]}"
# output
1

h2 = {}
h2[:count] += 1
# error
undefined method `+' for nil:NilClass
```

Loop
============
How to break out from loop
-----

```ruby
# by using break keyword
salary = [399, 234, 566, 533, 233]
salary.each do |s|
  break if s == 566
  puts s
end
#output
399
234
```

How to skip inside loop
-----

```ruby
# by using next keyword
salary = [399, 234, 566, 533, 233]
salary.each do |s|
  next if s == 533
  puts s
end
# output
399
234
566
233
```

How to repeat the current iteration
-----

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
3456
```

How to restart a loop
-----

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

Classes
============

```ruby
# create a class
class Person
	# attr_accessor acts as a getter and setter for following attributes
	attr_accessor :name, :number
end

# create an instance of the Person class
p = Person.new

# set attributes of the Person class
p.name = "Yukihiro Matsumoto"
p.number = 9999999999

# get attributes of the Person class
puts "#{p.name}"
Yukihiro Matsumoto

puts "#{p.number}"
9999999999
```

How to inherit a class
-----

```ruby
# create a class
class Person
	attr_accessor :name, :number
end

# use < symbol to inherit methods and attributes from parent class
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

How to check instance type
-----
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

Modules
============
modules are used for combining similar methods, so that other classes or modules can use it. You can not instantiate a module (like abstract classes in Java)

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

Miscellaneous
============
How to generate random number
-----

```ruby
rand(max=0) 

# when calling it without an argument, rand returns a floating point number between 0.0 (including) and 1.0 (excluding), under the hood max.to_i.abs == 0
rand

# output
0.055758056734957595

# when the argument value is greater than or equal to 1, rand returns a integer between 0 (including) and that number (excluding), under the hood max.to_i.abs >= 1
rand(100)

# output
7

# generating number between 2 numbers both inclusive
rand(150..170)

# output
167
```

Books and other resources
============
1. [Ruby doc](https://ruby-doc.org/)
2. [How to use Ruby’s English and/or operators without going nuts](http://www.virtuouscode.com/2014/08/26/how-to-use-rubys-english-andor-operators-without-going-nuts/)
3. [What is attr_accessor in Ruby?](https://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby)

Bug Reports and Feature Requests
============
Please create an issue with as much information you can. Thank you.

Author
============
Mahbub Zaman (https://mahbub.ninja)

License
============
MIT License
