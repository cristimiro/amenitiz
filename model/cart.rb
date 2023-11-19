require_relative '../service/offer_service'

# Cart class. Used to hold bucket list and total price.
class Cart
  attr_accessor :basket

  def initialize(basket:)
    @basket = basket
  end

  def totals
    "#{OfferService.new(basket: basket).apply_offers}€"
  end
end