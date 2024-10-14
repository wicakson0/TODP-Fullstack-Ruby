def concatenate_string(string_1, string_2)
  return string_1 + " " + string_2
end

# print(concatenate_string("John", "Doe"))

def find_base(num)
  if (num.to_s).length > 4
    return "number must contain 4 digit or less"
  else
    base_hash = {}
    first_digit = num % 10
    base_hash.merge!(first_digit: first_digit)
    second_digit = (num % 100) / 10
    base_hash.merge!(second_digit: second_digit)
    third_digit = num % 1000 / 100
    base_hash.merge!(third_digit: third_digit)
    fourth_digit = num / 1000
    base_hash.merge!(fourth_digit: fourth_digit)
    return base_hash
  end
end

# print(find_base(4321))
    
def print_movie_year()
  movie_hash = Hash["movie_1" => 2001, "movie_2" => 2002, "movie_3" => 2003]
  movie_hash.each_value{|year| puts "#{year}\n"}
end

# print_movie_year()

def factorial(num)
  cumulative_sum = 1
  for i in 1..num do 
    cumulative_sum = cumulative_sum * i 
  end
  return cumulative_sum
end

# puts factorial(4)

def multiply_float(floatnum_1, floatnum_2)
  if (floatnum_1.is_a?(Float) != true) or (floatnum_2.is_a?(Float) != true)
    return "Wrong Data type"
  else
    return floatnum_1 * floatnum_2
  end
end

# puts multiply_float(1,2.0)
# puts multiply_float(2.0, 2.0)

