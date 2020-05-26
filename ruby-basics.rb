# Question 1: puts returns nill!
def greet(name)
    puts "Hello, #{name}"
end
greet("Steven") #=> nill

# Question 2: puts vs. return 
def hate_steven?(name)
    if name == "Steven"
      "OMG He's the worst"
    else
      "You cool"
    end
end
hate_steven?("Steven") #=> "OMG He's the worst"

#Question 3: Using select and indexing strings
arr = ["apple", "pear", "face", "champagne", "palm tree", "aardvark", "pineapple"]
arr.select {|word| word[0] == 'a'}

# Question 4: number of words in the sentence
def word_count(str)
    str.split(" ").size
end 

# Question 5: Conditional Assignment Operator
def rude_greeting(name=nil)
    name ||= "you jerk" #output Hey there, you jerk if name is nill or underfined (falsey value)
    puts "Hey there, #{name}"
end

# Question 6
best_animal = "cat"
favorite_animal = best_animal
puts favorite_animal #puts "cat"

# Question 7
def my_favorite_animal
    "cat"
end
   
best_animal = my_favorite_animal
puts best_animal #puts "cat"

# Question 8: "Blink" + 182 => TypeError

#Question 9: puts out foods that are delicious
foods = {"pie" => "delicious", "broccoli" => "not delicious",
    "carrots" => "not delicious", "apples" => "delicious",
    "peanut butter" => "delicious"}
puts foods.select {|key, value| value == "delicious"}.keys

# Question 10: delete elements that are not delicious
puts foods.reject {|k, v| v == "delicious"}.keys

# Question 11: 
character_names = ["Daenerys Targaryen", "Jon Snow" ,"Arya Stark", "Tyrion Lannister", "Sansa Stark", "Cersei Lannister", "Margaery Tyrell"]

# With each, the return value will be the same as the inputted array of strings. To return the array with all strings in lowercase, we would need to use the map enumerable
def downcase_all(array_of_strings)
  array_of_strings.each do |one_string|
    one_string.downcase
  end
end

puts downcase_all(character_names)

# Question 12: Using Rand with Indices
archer = {
    "name" => "Sterling Mallory Archer",
    "co-workers"=> ["Lana Kane", "Cyril Figgis", "Cheryl Tunt", "Pam Poovey", "Dr Krieger"],
    "favorite_drink" => "Bloody Mary",
    "Quotes" => ["I swear to god, I had something for this", "Phrasing", "Boop", "Danger Zone", "Read a book", "Do you not?", "Can't or won't?"]
}

def random_quote(hash)
    quotes = hash["Quotes"]
    random_number = rand(0...quotes.size) #non-inclusive from 0 --> length of array
    puts quotes[random_number]
end

random_quote(archer)