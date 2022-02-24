dictionary = ["below","down","go","going","horn","how","howdy",
              "it","i","low","own","part","partner","sit"]

def substrings(string, array)
  my_hash = Hash.new(0)
  string.downcase.split.each do |string_word|
    array.reduce(my_hash) do |result, word|
      result[word] += 1  if string_word.downcase.include?(word)
      result
    end
  end
  my_hash
end

# Test
p substrings("Howdy partner, sit down! How's it going?", dictionary)