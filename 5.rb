# 5. Traveling through Europe one needs to pay attention to how the license plate in the given country is displayed. When crossing the border you need to park on the shoulder, unscrew the plate, re-group the characters according to the local regulations, attach it back and proceed with the journey.

# Create a solution that can format the dmv number into a plate number with correct grouping. The function input consists of a string s and group length n. The output has to be upper case characters and digits. The new groups are made from right to left and connected by -. The original order of the dmv number is preserved.

# Examples
# license_plate("5F3Z-2e-9-w", 4) ➞ "5F3Z-2E9W"

# license_plate("2-5g-3-J", 2) ➞ "2-5G-3J"

# license_plate("2-4A0r7-4k", 3) ➞ "24-A0R-74K"

# license_plate("nlj-206-fv", 3) ➞ "NL-J20-6FV"



class Funcc
    def pair(str , num)
        str1 = str.delete(" -").upcase
        str2 = str1.reverse
        n = num
        arr = []
        str2.each_char {|i| arr << i }
        a = 0
        m = n
        while a < arr.length
            a +=1
            if a == m && a < arr.length 
                arr.insert(m , "-")
                m = n+m+1
            end
        end
        arr.reverse.join()
    end
end 
 
 
puts Funcc.new.pair("5F3Z-2e-9-w", 4)
puts Funcc.new.pair("2-5g-3-J" , 2)
puts Funcc.new.pair("2-4A0r7-4k" , 3)
puts Funcc.new.pair("nlj-206-fv" , 3)

        