def longest_word(st)
  str = st.split(" ")
  str.max_by(&:length) 
end

puts longest_word("Margaret's toy is plastic.") 
