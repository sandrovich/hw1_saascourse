class Dessert
  attr_accessor :name, :calories
  
  def initialize(name, calories)
    # YOUR CODE HERE
    @name = name
    @calories = calories
  end
  
  def healthy?
    # YOUR CODE HERE
    @calories < 200
  end
  
  def delicious?
    # YOUR CODE HERE
    TRUE
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  
  def initialize(name, calories, flavor)
    # YOUR CODE HERE
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  def delicious?
    # YOUR CODE HERE
    @flavor != 'black licorice'
  end
end
