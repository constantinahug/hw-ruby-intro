# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  else
    total = 0
    arr.each { |a| total += a }
    return total
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr.first
  else
    # Below are arbitrary "low" numbers
    largest = -1000
    second_largest = -1000
    
    arr.each do |curr_item|
      if curr_item >= largest
        second_largest = largest
        largest = curr_item
      elsif curr_item >= second_largest
        second_largest = curr_item
      end
    end
    sum = largest + second_largest
    return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  elsif arr.length == 1
    return false
  else
    sum_combos = arr.combination(2).map { |x, y| x + y }
    if sum_combos.include?(n)
      return true
    else
      return false
    end
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  welcome =  "Hello, "
  welcome.concat(name)
  return welcome
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  # Numbers return false
  elsif /[0-9]/.match(s[0])
    return false
  # Vowels return false
  elsif /[AaEeIiOoUu]/.match(s[0])
    return false
  # Symbols return false
  elsif /[^a-zA-Z0-9]/.match(s[0])
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  number = s.to_i(2)
  # String should not be empty
  if s.empty?
    return false
  # String should not have any letters
  elsif /[a-zA-Z]/.match(s)
    return false
  # String shouldn't not be divisible by 4
  elsif number % 4 != 0
    return false
  # String divisible by 4 is correct!
  else
    return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
      if isbn.empty?
        raise ArgumentError
      else
        @book_isbn = isbn
      end
      
      if price <= 0
        raise ArgumentError
      else
        @book_price = price
      end
  end
  
  def isbn
    return @book_isbn
  end
  
  def isbn=(x)
    @book_isbn = x
  end
  
  def price
    return @book_price
  end
  
  def price=(x)
    @book_price = x
  end
  
  def price_as_string()
    str_price = "$"
    str_price.concat(@book_price.to_s)
    if str_price[-2] == "."
      str_price.concat("0")
    elsif !str_price.include?(".")
      str_price.concat(".00")
    end
    return str_price
  end
end
