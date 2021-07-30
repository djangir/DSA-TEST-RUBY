class Abc
  def longest_word(str)
    str.split(" ").max_by(&:length) 
  end
end

x = Abc.new  
 
puts x.longest_word("Hello darkness my old friend.") 
puts x.longest_word("Hello there mate.")
puts x.longest_word("Margaret's toy is plastic.")
