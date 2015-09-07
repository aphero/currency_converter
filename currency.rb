## THINGS TO REMEMBER
## Output from here is converted to String format
## Anything coming in is in Integer for calculation accuracy

require 'bigdecimal'
require 'bigdecimal/util'

class DifferentCurrencyCodeError < StandardError
end

class Currency

  attr_reader :amount
  attr_reader :code

  def initialize(*args)
    sym_code = { USD: "$", EUR: "€", GBP: "£"}
    if args.length == 2
      @amount = args[0].to_s.gsub(/[.\D]/,"").to_i
      @code = args[1]
      puts "#{@amount.class} #{@amount}"
    elsif args.length == 1
      @amount = args.to_s.gsub(/[.\D]/,"").to_i
      if args.to_s.gsub(/[\[\]".\d]/,"") == "$"
        @code = :USD
      end
      puts "#{@amount.class} #{@amount}"
    else
      raise "Invalid input"
    end
  end

  def amount
    '%0.2f' % (@amount/100.00)
  end

  def code
    @code
  end

  def +(add)
    if @code == add.code
      Currency.new(@amount + add.amount, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(sub)
    if @code == sub.code
      Currency.new(@amount - sub.amount, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(prod)
      Currency.new(@amount * prod, @code)
  end

end
