def echo (word)
  return "#{word}"
end

def shout (word)
  return "#{word.upcase}"
end

def repeat (word, a = 2)
  word = "#{word} " *a
  return word.strip
end

def start_of_word (s,a)
  return s[0...a]
end

def first_word (words)
  return words.split.first
end

def titleize(str)
  str.capitalize!  # capitalize the first word in case it is part of the no words array
  words_no_cap = ["and", "or", "the", "to", "the", "a", "but"]
  phrase = str.split(" ").map {|word| 
      if words_no_cap.include?(word) 
          word
      else
          word.capitalize
      end
  }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
phrase  # returns the phrase with all the excluded words
end
