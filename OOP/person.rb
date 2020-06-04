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