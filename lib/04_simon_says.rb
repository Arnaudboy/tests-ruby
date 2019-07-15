def echo (string)
	return string 
end 

def shout (string)
	return string.upcase
end

def repeat (truc, n = 2, *p)
    if p != nil 
        return (truc + " ")*(n - 1) + truc 
    else 
        return (truc + " ")*(p - 1) + truc
    end 
end   

def start_of_word(string, n)
	return string[0..(n-1)]
end

def first_word (string)
	return string.split(" ")[0]
end 

def titleize (string)
	nocaps = "and", "or", "the"
	return string.capitalize.split(" ").map { |word| nocaps.include?(word) ? word : word.capitalize }.join(" ")
end 