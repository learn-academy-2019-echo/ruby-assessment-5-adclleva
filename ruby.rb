# ASSESSMENT 4: INTRO TO RUBY
# Coding practical questions

# 1. Use TWO different Ruby methods to return a new array with all the numbers multiplied by 3. Expected output: [3, 6, 18, 27, 9, 63]

myArray = [1, 2, 6, 9, 3, 21]

def multiplied_by_3_map(array)
  array.map {|num| num * 3} 
end

# the reduce method with start with an empty array
def multiplied_by_3(array)
  array.reduce([]) {|current_number, next_number| current_number << (next_number * 3)} 
end

# both output [3, 6, 18, 27, 9, 63]
p multiplied_by_3_map(myArray) 
p multiplied_by_3(myArray)

# 2. Create a method that takes in a sentence and returns a new sentence with the first letter of each word capitalized. Expected output = "Hello There, How Are You?"

sentence = "hello there, how are you?"

def capitalize_sentence(sentence)
  sentence.split(" ").map {|word| word.capitalize}.join(" ")
end

p capitalize_sentence(sentence)

# 3. Create a method that takes in a string and returns a new string with all the vowels removed. Expected output = " hv n vwls"

no_vowels = "I have no vowels"

# for this I used the concept of Monkey Patching to at a mthod to the existing String Class
# probably not good practice to mess round with core classes but I used this opportunity to practice it
class String
  def disem_vowels
    vowels = 'aeiou'

    self.split("").select {|char| !vowels.include?(char)}.join("")
  end
end

# this returns "I hv n vwls"
p no_vowels.disem_vowels

# 4. Look at this horrible Ruby code. Fix it to be good Ruby code.

class Example
  def initialize(day)
    @day=day
  end

  def SayHi
    if @day === "Friday" 
      puts "TGIF!"
    elsif @day === "Monday"
      puts "Its monday again"
    else
      puts "another day"
    end
  end
end

today = Example.new("Friday")
today.SayHi # prints out TGIF!

# 5a. Create a class called Animal that initializes with a color. Create a method in the class called legs that returns 4.
class Animal

  attr_reader :legs # i created an attr_reader accessor to only read or "get" the value that's in the instance variable legs

  def initialize(color)
    @color = color
    @legs = 4
  end
end

# 5b. Create a new instance of an Animal with a brown color. Return how the number of legs for the animal object.

bear = Animal.new("brown")
p bear.legs # prints out 4