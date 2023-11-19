require_relative 'offer'

# StrawberriesOffer class
class StrawberriesOffer < Offer
  def apply_offer
    super

    product_count < 3 ? product_count * product_price : product_count * 4.5
  end
end