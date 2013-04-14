class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  
  def in(currency)
    singular_currency = currency.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      (self / @@currencies[singular_currency]).round(3)
    else
      super
    end
  end
end

class String
  # YOUR CODE HERE
  def palindrome?
    downcase.gsub(/\W/, '').reverse == downcase.gsub(/\W/, '')
  end
end

require 'enumerator'
module Enumerable
  # YOUR CODE HERE
  def palindrome?
    reverse_each.to_a == self.to_a
  end
end

p "10.dollar.in(:euro), #{10.dollar.in(:euro)}"
p "5.rupees, #{5.rupees}"
p "5.rupees.in(:dollar), #{5.rupees.in(:dollar)}"
p "1.yen.in(:euro), #{1.yen.in(:euro)}"

p "5.dollars.in(:euros), #{5.dollars.in(:euros)}"
p "10.euros.in(:rupees), #{10.euros.in(:rupees)}"
