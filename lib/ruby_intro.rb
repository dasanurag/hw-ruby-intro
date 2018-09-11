# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  for i in 0 .. arr.length - 1
	total += arr[i]
  end
  return total	
end

def max_2_sum arr
  if arr.length == 0 
	return 0
  elseif arr.length == 1
	return arr.max
  else
	return sum(arr.max(2))
  end
end

def sum_to_n? arr, n
  !!arr.combination(2).detect { |a,b| a+b == n }
end

# Part 2

def hello(name)
  return "Hello, #{name}" 
end

def starts_with_consonant? s
  return !!(s =~ /^[b-df-hj-np-tv-z]/ or s =~ /^[B-DF-HJ-NP-TV-Z]/)
end

def binary_multiple_of_4? s
  if s =~ /^[01]*$/ and s.length > 0
	return s.to_i(base=2).modulo(4).zero?
  else
	return false
  end	
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn,price)
	if isbn.length == 0 or price <= 0
		raise ArgumentError.new("Either isbn is empty or price is less than or equal to zero!!")
	end
	@isbn = isbn
	@price = price
  end

  def price_as_string
#	@price = @price.to_f.round(3)
	@price = sprintf("%0.02f",@price)
	return "$#{@price}"
  end
end
