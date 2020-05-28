require 'pry'

# Question 1:
class FunnyBots  

    attr_accessor :name, :quotes  
    @@bots = []

    def initialize(name, quotes)
        @name = name
        @quotes = quotes
        @@bots << self
    end

    def random_quote
        self.quotes.sample
    end

    def self.bots
        @@bots
    end
end

archer = FunnyBots.new("Archer", ["Q: How did the programmer die in the shower? A:He read the shampoo bottle instructions: Lather. Rinse. Repeat. ", "A UI is like a joke. If you have to explain it, it's not good.", "Q: How many programmers does it take to change a light bulb? A: None – It’s a hardware problem"] )


#   A. What is self in this line @@bots << self ? An instance of the FunnyBots class
# B. What is self in this line self.quotes.sample? Also an instance of the FunnyBots class
# C. What kind of method is self.bots & what is self? D. Will this work archer.bots? Why / why not?
        # => It is a class method so in this case, self refers to the entire FunnyBots class
        # => archer.bots will not work becase archer is a specific instance of the FunnyBots class

#Question 2:
class Bicycle
    attr_reader :tire, :style, :gears
    @@all = []

    def initialize(tire, gears, style)
        @tire = tire
        @gears = gears
        @style = style
        self.class.bikes << self
    end

    def self.bikes 
        @@all 
    end 

    # Rather than creating a new class variable, we will just filter out the existing class variable.
    def self.styles 
        self.bikes.collect {|bicycle| bicycle.style} #collect is an alias for map!
    end

    def tire_size
        self.tire
    end

    def tire_size=(new_size)
        @tire = new_size
    end 
end

mongoose = Bicycle.new(4, 10, "BMX")
mongoose.tire_size = 5 #created a setter method by this name so we can use assignment syntax
mongoose.gears #created a getter method with attribute macro
Bicycle.bikes #created class variable to keep track of all Bike instances
Bicycle.styles? #class method filters from the @@all class variable