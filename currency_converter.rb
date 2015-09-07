require "./currency"

class Currency_converter
  def initialize(old, newc)
    @con_rates = { USD: { USD: 1.0, EUR: 0.89686 }, EUR: { USD: 1.11627, EUR: 1 }}
    @old_amount = old.amount
    @old_code = old.code
    @new_code = newc
    puts @old_amount
    puts @old_code
    puts @new_code
  end

  def convert(old, new)
    
  end
end
