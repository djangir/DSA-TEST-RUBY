# 1. Create a function that subtracts one positive integer from another, without using any arithmetic operators such as -, %, /, +, etc.

class Subb
    def sub(a , b)
        Array.new.fill("a" , (b...a)).join("").length
    end  
end  
puts Subb.new.sub(1000 , 500)
 
