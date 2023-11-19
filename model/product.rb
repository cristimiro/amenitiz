# Product class. Used to build different instances of Product
class Product
  attr_accessor :code, :name, :price

  def initialize(code:, name:, price:)
    @code = code
    @name = name
    @price = price
  end

  def display_price
    "#{price}€"
  end
end