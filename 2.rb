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






class Array
  
  def square 
    self.map { |ij| ij.to_i * ij.to_i }  
  end
  
  def cube 
    self.map { |ij| ij.to_i * ij.to_i * ij.to_i }  
  end 
  
  def divisible_by by  
    byy = by.to_i
    self.map do |ij| 
               if (ij.to_i % byy == 0) 
                 ij.to_i 
               end
             end
  end
  
  def strictly_above by  
    by = by.to_i
    self.select { |i| i > by }
  end
  def strictly_below by  
    by = by.to_i
    self.select { |i| i < by }
  end
end

puts [1, 2, 3].square  
puts [1, 2, 3].cube  
puts [1, 2, 3, 4, 5, 6].divisible_by 2  
puts [1, 2, 3, 4].strictly_above 2  
puts [1, 2, 3, 4].strictly_below 3  
