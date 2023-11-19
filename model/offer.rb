# Offer class
class Offer
  attr_accessor :product_price, :product_count

  def initialize(product_price:, product_count:)
    @product_price = product_price
    @product_count = product_count
  end

  def apply_offer
    0 if product_count.zero?
  end
end