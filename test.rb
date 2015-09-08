require './currency'
require './currency_converter'


# a = Currency.new(12.34, "USD")
# puts "#{a.amount.class} #{a.amount}"
# puts "#{a.code.class} #{a.code}"
# b = Currency.new("€12.00")
# puts "#{b.amount.class} #{b.amount}"
# puts "#{b.code.class} #{b.code}"
# convert_me = Currency_converter.new()
convert_me = Currency_converter.new()
origin =  Currency.new(1.00, :USD)
converted = convert_me.convert(Currency.new(1.00, :USD), :USD)
puts Currency.new(1.00, :USD) == convert_me.convert(Currency.new(1.00, :USD), :USD)
# puts converted == origin
# puts origin
# puts origin.amount
# puts origin.code
# # puts convert_me.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)
# puts converted.amount
# puts converted.code
# puts origin
# puts converted == origin
