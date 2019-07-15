def echo (string)
	return string 
end 

def shout (string)
	return string.upcase
end

def repeat (string, *n)
	return String(string, b=2, n)
end 