# 1. Create a function that subtracts one positive integer from another, without using any arithmetic operators such as -, %, /, +, etc.

class Subb
    def sub(a , b)
        arr = []
        for i in b...a
             arr << 1     
        end  
        arr.join("").length
    end
end  

puts Subb.new.sub(180 , 90)
 