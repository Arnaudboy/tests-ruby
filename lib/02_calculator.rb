def add(c1, c2)
	ad = c1 + c2
	return ad
end

def subtract(c1, c2)
	ad = (c1 - c2)
	return ad
end

def sum(tab)
	return tab.sum
end

def multiply(c1, c2)
	ad = c1 * c2
	return ad
end

def raises(c1, c2)
	ad = c1**c2
	return ad
end

def fac(num)
	return (1..num).reduce(:*) || 1
end