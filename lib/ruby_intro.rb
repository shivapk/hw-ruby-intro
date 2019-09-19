# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |e|
    sum += e
  end
  return sum
end

def max_2_sum arr
  if arr.length == 0 then
    return 0
  elsif arr.length == 1 then
    return arr[0]
  end

  arr.sort!
  arr.reverse!
  return arr[0] + arr[1]
end

def sum_to_n? arr, n
  arr.sort!
  i = 0
  j = arr.length-1
  while i < j
    sum = arr[i] + arr[j]
    if sum == n then
      return true
    elsif sum < n then
      i += 1
    else
      j -= 1
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s =~ /^[b-df-hj-np-tv-z]/i then true else false end
end

def binary_multiple_of_4? s
  if s.length == 0 then return false end
  s = "00" + s
  # for any binary number shifting by right is dividing by 2, double shifting twice is dividing by 4
  return s =~ /^[01]*00$/
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0 then
      raise ArgumentError.new("isbn shouldn't be empty nor price should be less than zero")
    end
    @isbn, @price = isbn, price
  end

  # getters
  def isbn
    @isbn
  end

  def price
    @price
  end

  # setters
  def isbn=(isbn)
    if isbn.length == 0 then
      raise ArgumentError.new("isbn shouldn't be empty")
    end
    @isbn = isbn
  end

  def price=(price)
    if price <= 0 then
      raise ArgumentError.new("price shouldn't be negative nor zero number")
    end
    @price = price
  end

  # format price as two decimal point string
  def price_as_string
    return "$%0.2f" % @price
  end
end
