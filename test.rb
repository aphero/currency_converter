require './currency'
require './currency_converter'

=begin
code = ''
curr = ''

def validate_code(c)
  valid = ["USD", "EUR"]
  valid.include?(c)
end

def validate_curr(cu)
  cu.is_a?(Fixnum)
end

until validate_code(code)
  puts "Please enter a currency code. (USD or EUR)"
  code = gets.chomp
end

until validate_curr(curr)
  puts "Please enter an amount of currency."
  curr = gets.chomp
end
=end

a = Currency.new(12, "USD")
b = Currency.new(12, "USD")
c = Currency.new(10, "USD")
d = Currency.new(12, "EUR")
# cannot compare objects to each other
# can only compare individual attributes to get true

# CODE BLOCK TO TEST WHETHER OBJECTS CAN BE COMPARED TO EACH OTHER.
# puts a
# puts b
# puts a == b
# puts a.amount == b.amount
# puts a.code == b.code
# puts a.amount == c.amount
# puts c.code == d.code

# CODE BLOCK TO TEST ADDITION/SUBTRACTION
