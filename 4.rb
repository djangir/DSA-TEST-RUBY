
# 4. Create a function that is a Hashtag Generator by using the following rules:

# The output must start with a hashtag (#).
# Each word in the output must have its first letter capitalized.
# If the final result, a single string, is longer than 140 characters, the function should return false.
# If either the input (str) or the result is an empty string, the function should return false.
# Examples
# generate_hashtag("    Hello     World   " ) ➞ "#HelloWorld"

# generate_hashtag("") ➞ false, "Expected an empty string to return false"

# generate_hashtag("Edabit Is Great") ➞ "#EdabitIsGreat", "Should remove spaces."

class Hashh
  def hsh str 
    if (str.length > 1 &&  str.length < 140)
      str1 = str.split
      arrr = []
      str1.each{|i| arrr << i.capitalize}
      "##{arrr.join("")}"
    else
      return false, "Expected an empty string to return false"
    end
  end
end
  
puts Hashh.new.hsh "    Hello     World   "  
puts Hashh.new.hsh "" 
puts Hashh.new.hsh "Edabit Is Great"   
        
 