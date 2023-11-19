# Cart class. Used to hold bucket list and total price.
class Cart
  attr_accessor :basket
  attr_reader :total_price

  def initialize(basket)
    @basket = basket
  end
end