require './currency'
require './currency_converter'


a = Currency.new(12.34, "USD")
puts "#{a.amount.class} #{a.amount}"
puts "#{a.code.class} #{a.code}"
b = Currency.new("$12.00")
puts "#{b.amount.class} #{b.amount}"
puts "#{b.code.class} #{b.code}"
Currency_converter.new(Currency.new(1.00, :USD), :USD)
# Currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)
