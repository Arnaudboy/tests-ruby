def translate(str)
  str_arr = str.split(" ")
  str_arr.each do |word|
    if word.start_with?("a","e","i","o","u")
      str_arr[str_arr.index(word)] = word + "ay"
    else
      counter = 0
      suffix = ""
      word.each_char do |letter|
        if letter.start_with?("a","e","i","o","u")
          break
        elsif letter == "q" && word[word.index(letter)+1] == "u"
          counter +=2
          suffix = suffix + "qu"
          break
        else
          counter += 1
          suffix = suffix + letter
        end
      end
      prefix = word.slice!(0..(counter-1))
      str_arr[str_arr.index(word)] = word + suffix + "ay"
    end
  end
  str = str_arr.join(" ")
  str
end