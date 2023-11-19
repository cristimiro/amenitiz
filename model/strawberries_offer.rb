require_relative 'offer'

# StrawberriesOffer class
class StrawberriesOffer < Offer
  def apply_offer
    return 0 if product_count.zero?

    product_count < 3 ? product_count * product_price : product_count * 4.5
  end
end