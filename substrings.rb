dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(string, dictionary)
  string = string.downcase
  now_array = string.split(" ")
  hash = Hash.new(0)
  filter = dictionary.filter do |word|
    now_array.each do |x|
      res = x.include?(word)
      if res == true
        hash[word] += 1
      end
    end
  end
  puts hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)