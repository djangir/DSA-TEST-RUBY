# q. 1 :- Create a function that subtracts one positive integer from another, without using any arithmetic operators such as -, %, /, +, etc.

# ans  

def sub(num1 , num2)
    puts num1-num2
end
puts "inter first number"
a = gets.chomp.to_i
puts "inter 2nd number"
b = gets.chomp.to_i

puts "output #{a}-#{b} is :-"
sub(a, b)




# q :- 2. Write the following functions to extend the array class, by adding the methods:

# square()
# cube()
# divisible_by(x)
# strictly_above(x)
# strictly_below(x)
# Examples
# [1, 2, 3].square ➞ [1, 4, 9]
# [1, 2, 3].cube ➞ [1, 8, 27]
# [1, 2, 3, 4].divisible_by(2) ➞ [2, 4]
# [1, 2, 3, 4].strictly_above(1) ➞ [2, 3, 4]
# [1, 2, 3, 4].strictly_below(2) ➞ [1]


class Mathss
    def square(arr)
        arr = arr
        arr2 = []
        arr.each{|ij| arr2 << ij.to_i*ij.to_i}  
        puts "Input Is #{arr} and square Is #{arr2}"
    end

    
    def cube(arr)
        arr = arr
        arr2 = []
        arr.each{|ij| arr2 << ij.to_i*ij.to_i*ij.to_i}  
        puts "Input Is #{arr} and cube Is #{arr2}"
    end
    
    def divisible_by(arr , by)
        arr = arr
        by = by.to_i
        arr2 = []
        arr.each{|ij| arr2 << (ij.to_f/by).floor(2)}  
        puts "Input Is #{arr} and divisible_by #{by} Is #{arr2}"
    end

    def strictly_above(arr , by)
        arr = arr
        by = by.to_i
        arr2 = arr.select{|i| i > by}
    
        puts "Input Is #{arr} and strictly_above #{by} Is #{arr2}"
    end

    def strictly_below(arr , by)
        arr = arr
        by = by.to_i
        arr2 = arr.select{|i| i < by}
    
        puts "Input Is #{arr} and strictly_below #{by} Is #{arr2}"
    end
end



# call classes and functions
mat = Mathss.new 
mat.square([5 , 8])
mat.cube([2 , 3])
mat.divisible_by([9 , 16] , 3)
mat.strictly_above([8, 2, 9, 16] , 3)
mat.strictly_below([8, 2, 10, 16] , 9)



 


# 3. Given an number, return a string which contains varying amounts of the word 'MEGA' depending on the given number's order of magnitude.
# If the number is less than 100, return "not a mega milestone".
# Otherwise, start with the string "MEGA milestone".
# For every order of magnitude over 100 that the number is, add the word "MEGA" to the start of the string.
# See the examples below for further clarification!

# Examples
# how_mega_is_it(54) ➞ "not a mega milestone"
# how_mega_is_it(143) ➞ "MEGA milestone"
# how_mega_is_it(1000) ➞ "MEGA MEGA milestone"
# how_mega_is_it(9999.9) ➞ "MEGA MEGA milestone"

# how_mega_is_it(10000) ➞ "MEGA MEGA MEGA milestone"


def mega(a)
    num = a.to_i
    if num < 100
        puts "#{num} is not a MEGA milestone"
    else
        str = num.to_s
        megaa = str.length-2
        puts " MEGA "*megaa + " milestone "
    end
end

mega(45458)




# 4. Create a function that is a Hashtag Generator by using the following rules:

# The output must start with a hashtag (#).
# Each word in the output must have its first letter capitalized.
# If the final result, a single string, is longer than 140 characters, the function should return false.
# If either the input (str) or the result is an empty string, the function should return false.
# Examples
# generate_hashtag("    Hello     World   " ) ➞ "#HelloWorld"

# generate_hashtag("") ➞ false, "Expected an empty string to return false"

# generate_hashtag("Edabit Is Great") ➞ "#EdabitIsGreat", "Should remove spaces."



def hs str  
    if str.length > 1 &&  str.length < 140
    str1 = str.split
    arrr = []
    str1.each{|i| arrr << i.capitalize}
    puts "outPut is ##{arrr.join("")} "
    else
        puts  false, "Expected an empty string to return false"
    end
end

puts "inter strign for convert into #"
string = gets 

hs string




# ans 5 



def funcc str , num
    str1 = str.delete(" -").upcase
    puts str1.length
    if str1.length <= 8
        if num.to_i == 4 || num.to_i == 1
        pos = str1.length/2
           puts str1.insert(pos, "-")
        elsif num.to_i == 3 || num.to_i == 2
            stringg = str1.insert(2 , "-")  
            puts stringg.insert(-3, "-")
        else 
            puts "inter 1 , 2 , 3 or 4"
        end
    else
        puts  "Inter a valid String"
    end
end


puts "inter strign for convert into #"
string = gets.chomp

funcc string , 3
