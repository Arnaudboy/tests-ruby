def ftoc(temp)
	temp = ((temp - 32)*(5/9.to_f))
	return temp	
end

def ctof(temp)
	temp = ((temp * 9/5.to_f) + 32)
	return temp
end