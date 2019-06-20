# Ruby-Cheatsheet
# Ruby

If you don't want to install ruby natively you can use docker.

```
docker run -it --rm ruby:latest
# check which version of ruby you're running
RUBY_VERSION
```

## Data types

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

Check data type
```
# both are synonymous
> a = 37
> a.kind_of? Integer 
> true
> a.is_a? Integer
> true
```

Check instance type
```
# Returns true if the object is an instance of the given class, not a subclass or superclass

> class Vehicle; end
> class Car < Vehicle; end
> class Audi < Car; end

> car = Car.new
> car.instance_of? Vehicle
> flase
> car.instance_of? Car
> true
> car.instance_of? Audi
> false

> a = 7
> a.instance_of? Integer
> true
> a.instance_of? Numeric
> false
```
