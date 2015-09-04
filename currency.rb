class CodeError < StandardError

end

class Currency

  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def amount
    @amount
  end

  def code
    @code
  end

  def +(add)
    if @code == add.code
      Currency.new(@amount += add.amount, @code)
    else
        raise CodeError, 'DifferentCurrencyCodeError'
#      rescue CodeError => e
#        p e.message
#        p e.backtrace
#      end 
    end
  end

  def -(sub)
    if @code == sub.code
      Currency.new(@amount -= sub.amount, @code)
    else
      type_error
    end
  end

end
