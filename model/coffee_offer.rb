require_relative 'offer'

# CoffeeOffer class
class CoffeeOffer < Offer
  def apply_offer
    return 0 if product_count.zero?

    product_count < 3 ? product_count * product_price : product_count * (product_price * (2 / 3))
  end
end