def translate(str)
  str_arr = str.split(" ")
  str_arr.each do |word|
    if word.start_with?(/[aeiou]/)
      str_arr[str_arr.index(word)] = word + "ay"
    else
      suffix = ""
      word.each_char do |letter|
        if letter.start_with?(/[aeiou]/)
          break
        elsif letter.start_with?(/[q]/)
          suffix = suffix + "qu"
          prefix = word.slice!(/[^aeio]+/)
          break
        else
          prefix = word.slice!(/[^aeiou]/)
          suffix = suffix + letter
        end
      end      
      str_arr[str_arr.index(word)] = word + suffix + "ay"
    end
  end
  str = str_arr.join(" ")
  str
end