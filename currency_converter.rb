require "./currency"

class Currency_converter
  attr_reader :con_rates
  attr_reader :code_to_sym

  def initialize()
    @con_rates = { USD: { USD: 1.0, EUR: 0.89686, GBP: 0.65456 },
                   EUR: { USD: 1.11627, EUR: 1, GBP: 0.73091 },
                   GBP: { USD: 1.52777, EUR: 1.36814, GBP: 1}}
    @code_to_sym = { USD: "$", EUR: "€", GBP: "£" }
  end

  def convert(old_curr, new_code)
    return Currency.new(old_curr.amount * @con_rates[old_curr.code][new_code], new_code) if old_curr.code == new_code
  end
end
