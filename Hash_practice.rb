puts "Yo give me that good text: "
#Get user input with no new line char
text = gets.chomp
#Split by spaces
words = text.split(" ")
#New Hash
frequencies = Hash.new(0)
#Add all the words to the hash and store frequency of each word
words.each{|x| frequencies[x]+=1}
#Sort by the count
frequencies = frequencies.sort_by do |word, count|
  count
end
#reverse to store by most to least
frequencies.reverse!
#Print to the console the words + count
frequencies.each{|word,count| puts "#{word} #{count}"}
