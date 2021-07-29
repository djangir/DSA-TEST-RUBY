def longest_word(st)
  str = st.split(" ")
  puts str.max_by(&:length)
end

longest_word("Margaret's toy is plastic.") 
