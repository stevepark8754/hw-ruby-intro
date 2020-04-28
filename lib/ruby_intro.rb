# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  #arr.sum
  result = 0
  arr.each {|x| result += x}
  return result
end

def max_2_sum arr
  # YOUR CODE HERE
  result = 0
  if arr.length == 1
    result = arr[0]
  elsif arr.length > 1
    arr.sort!
    result = arr[-1] + arr[-2]
  end
  return result
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2) {|c| return true if c.sum == n}
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end

  Regexp.new('^[qwrtypsdfghjklzxcvbnm]', Regexp::IGNORECASE).match?(s)

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  #if /^[01]+$/.match?(s)
  #  s.to_i(2) % 4  == 0
  #else
  #  false
  #end
  
  /^(0|00|([01]+00))$/.match?(s)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    #return "$%0.2f" %[@price]
    return format("$%.2f", @price)
  end
end