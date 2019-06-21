# Ruby-Cheatsheet

Table of Contents
============
   * [Installation](#installation)
   * [Data types](#data-types)
      * [How to check data type](#how-to-check-data-type)
      * [How to check instance type](#how-to-check-instance-type)
   * [Array](#array)
      * [How to iterate an Array](#how-to-iterate-an-array)
         * [each](#each)
         * [each_with_index](#each_-with_index)
         * [each_index](#each_index)
         * [map](#map)
         * [select](#select)
         * [reject](#reject)
         * [inject](#inject)
         * [collect](#collect)
         * [detect](#detect)
   * [Loop](#loop)
      * [How to break out from loop](#how-to-break-out-from-loop)
      * [How to skip inside loop](#how-to-skip-inside-loop)
   * [Books](#books)
      
Installation
============

If you don't want to install ruby natively you can use [docker](https://www.docker.com/).

```
docker run -it --rm ruby:latest
# check which version of ruby you're running
RUBY_VERSION
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
```
# both are synonymous

a = 37
a.kind_of? Integer 
true
a.is_a? Integer
true
```

How to check instance type
-----
```
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

Array
============
How to iterate an Array
-----
There are multiple ways you can iterate an. 

| No | Name | When to use |
|---|---|---|
| 1 | each             | when you want to just iterate           |
| 2 | each_with_index  | when you want the both index and value  |
| 3 | each_index       | when you want just the indexes          |
| 4 | map              | todo                                    |
| 5 | select           | todo                                    |
| 6 | reject           | todo                                    |
| 7 | inject           | todo                                    |
| 8 | collect          | todo                                    |
| 9 | detect           | todo                                    |

### each
```
salary = [399, 234, 566, 533, 233]
salary.each { |x| puts x }
# output
399
234
566
533
233
```

```
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
```
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
```
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
```
salary = [399, 234, 566, 533, 233]
```

### select
```
salary = [399, 234, 566, 533, 233]
```

### reject
```
salary = [399, 234, 566, 533, 233]
```
### inject
```
salary = [399, 234, 566, 533, 233]
```
### collect
```
salary = [399, 234, 566, 533, 233]
```

### detect
```
salary = [399, 234, 566, 533, 233]
```
Loop
============
How to break out from loop
-----
```
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
```
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

Books
============
TODO
