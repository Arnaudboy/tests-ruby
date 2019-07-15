def who_is_bigger(a, b, c)
	if a == nil || b == nil || c == nil
		return "nil detected"
	else
	l = [a, b, c]
	l.each do |item|
			if a == l.max 
           		return "a is bigger"
           	elsif b == l.max 
           		return "b is bigger"
           	else 
           		return "c is bigger"
           	end 
         end 	
    end  		
end 

def reverse_upcase_noLTA(string)
	return string.upcase.reverse.delete ('L' 'T' 'A')
end

def array_42(tab)
	tab.each do |item|
		if tab.include?(42)
			return true
		else
			return false
		end
	end	
end

def magic_array(array)
	return array.flatten.sort.map { |tab| tab *= 2}.reject {|tab| tab %3==0}.uniq
end