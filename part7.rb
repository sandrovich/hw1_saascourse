class CartesianProduct
  include Enumerable
  # YOUR CODE HERE
  def initialize(seq1, seq2)
    @seq1, @seq2 = seq1, seq2
    @cart = @seq1.product(@seq2)
  end
  
  def each
    @cart.each do |pair|
      yield pair
    end
  end
end

CartesianProduct.new([:a, :b, :c], [4, 5]).each { |elt| puts elt.inspect }