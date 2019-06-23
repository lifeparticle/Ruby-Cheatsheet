# Ruby-Cheatsheet

Table of Contents
============
   * [Installation](#installation)
   * [Methods](#methods)
      * [How to declare a method](#how-to-declare-a-method)
      * [How to call a method](#how-to-call-a-method)
      * [How to define default value for a method parameter](#how-to-define-default-value-for-a-method-parameter)
      * [How to pass variable length argument to a method parameter](#how-to-pass-variable-length-argument-to-a-method-parameter)
   * [Data types](#data-types)
      * [How to check data type](#how-to-check-data-type)
      * [How to check instance type](#how-to-check-instance-type)
   * [String](#string)
      * [How to convert string to lower or upper case](#how-to-convert-string-to-lower-or-upper-case)
   * [Array](#array)
      * [How to iterate an Array](#how-to-iterate-an-array)
         * [each](#each)
         * [each_with_index](#each_with_index)
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
      * [How to check if a value exist in an Array](#how-to-check-if-a-value-exist-in-an-array)
      * [How to clear an Array](#how-to-clear-an-array)
   * [Loop](#loop)
      * [How to break out from loop](#how-to-break-out-from-loop)
      * [How to skip inside loop](#how-to-skip-inside-loop)
      * [How to repeat the current iteration](#how-to-repeat-the-current-iteration)
      * [How to restart a loop](#how-to-restart-a-loop)
   * [Case Expressions](#case-expressions)
   * [Books](#books)
      
Installation
============

If you don't want to install ruby natively you can use [docker](https://www.docker.com/).

```
docker run -it --rm ruby:latest
# check which version of ruby you're running
RUBY_VERSION
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

Data types
============

| No | Type  | Example  | Class  | Doc  |
|---|---|---|---|---|
| 1 | Integer  | > a = 17                       |> a.class <br> > Integer <br> > a.class.superclass <br> > Numeric | [link](https://ruby-doc.org/core-2.6.3/Integer.html)  |
| 2 | Float    | > a = 87.23                    |> a.class <br> > Float <br> > a.class.superclass <br> > Numeric   | [link](https://ruby-doc.org/core-2.6.3/Float.html)    |
| 3 | String   | > a = "Hello universe"         |> a.class <br> > String                                           | [link](https://ruby-doc.org/core-2.6.3/String.html)   |
| 4 | Array    | > a = [12, 34]                 |> a.class <br> > Array                                            | [link](https://ruby-doc.org/core-2.6.3/Array.html)    |
| 5 | Hash     | > a = {type: "tea", count: 10} |> a.class <br> > Hash                                             | [link](https://ruby-doc.org/core-2.6.3/Hash.html)     |
| 6 | Boolean  | > a = false<br>> a = true        |> a.class <br> > FalseClass <br> > a.class <br> > TrueClass       | [TrueClass](https://ruby-doc.org/core-2.6.3/TrueClass.html) <br> [FalseClass](https://ruby-doc.org/core-2.6.3/FalseClass.html)  |
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

String
============

How to convert string to lower or upper case
-----
| No | Method name | output |
|---|---|---|
| 1 | "HELLO World".downcase   | "hello world" |
| 2 | "hello worlD".upcase     | "HELLO WORLD" |
| 3 | "hEllo wOrlD".capitalize | "Hello world" |
| 4 | "hEllo WOrlD".swapcase   | "HeLLO woRLd" |

Array
============

How to iterate an Array
-----
There are multiple ways you can iterate an Array. 

| No | Name | When to use |
|---|---|---|
| 1  | each             | when you want to just iterate                                                                                                                                     |
| 2  | each_with_index  | when you want the both index and value                                                                                                                            |
| 3  | each_index       | when you want just the indexes                                                                                                                                    |
| 4  | map              | returns array containing the values returned by the block                                                                                                         |
| 5  | select           | adds a value to a new array if your block returns true, returns ```[]``` otherwise. helpful when you are looking for a subset                                     |
| 6  | reject           | removes a value from a new array if your block returns true, returns ```[]``` otherwise. helpful when you are looking for a subset                                |
| 7  | inject           | when you want a single value. helpful when you want to accumulate, concatenate                                                                                    |
| 8  | reduce           | reduce and inject methods are aliases                                                                                                                             |
| 9  | collect          | same as map                                                                                                                                                       | 
| 10 | detect           | returns the first item in the array if your block returns true, returns ```nil``` otherwise. helpful when you are looking for something based on a business logic |
| 11 | while            | when you want to iterate for certain number of times                                                                                                              |
| 12 | until            | when you want to iterate until something happens                                                                                                                  |
| 13 | for              | similar to each                                                                                                                                                   |

### each
```ruby
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
# when you have multiline logic
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
        res = 10 / 0
    end
    puts s
    sum += s
  end
rescue
    retry
end
```

Case Expressions
============

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

Books
============
TODO
