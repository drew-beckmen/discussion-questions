class Animal
    attr_reader :species
    def initialize(species)
        @species = species 
    end 


    # def species
    #     "cat"
    # end
end

# New Instance
animal = Animal.new("cat")

# Species of the animal 
puts animal.species 

# Question 3
class Cat
    def species
        "cat"
    end
end

cat1 = Cat.new 
cat2 = Cat.new 

puts cat1 == cat2 #=> false 

# Question 4
# class Animal
 
#     def species 
#       my_species = "cat"
#     end
   
#     def say_species
#       puts "Hi! I'm a #{my_species}"
#     end
#   end

# maru = Animal.new
# maru.say_species --> undefined local variable my_species

class Animal
 
    def species 
      @my_species = "cat"
    end
   
    def say_species
      puts "Hi! I'm a #{self.species}"
    end
end

maru = Animal.new
maru.say_species # => "Hi! I'm a cat"

# Question 5
class Animal 
    attr_reader :species 
    def initialize(species)
        @species = species 
    end 
end 

# Question 6 
class Animal
    def initialize(species)
      @species = species
    end
  end
  lil_bub = Animal.new("cat") #=> lil_bub is an instance/object of the class Animal