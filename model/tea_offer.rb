require_relative 'offer'

# TeaOffer class
class TeaOffer < Offer
  def apply_offer
    super

    product_price * (product_count / 2).to_i + ((product_count % 2).zero? ? 0 : product_price)
  end
end