class Currency
  attr_accessor :amount :code


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
    @amount += add
  end
end
