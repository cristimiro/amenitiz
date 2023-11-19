require_relative '../model/tea_offer'
require_relative '../model/coffee_offer'
require_relative '../model/strawberries_offer'
require_relative '../builder/product_builder'
# Offer class
class OfferService
  attr_accessor :basket

  def initialize(basket:)
    @basket = basket
  end

  def apply_offers
    coffee_offer + tea_offer + strawberires_offer
  end

  private

  def coffee_offer
    CoffeeOffer.new(product_price: coffee_product.price, product_count: coffee_count).apply_offer
  end

  def tea_offer
    TeaOffer.new(product_price: tea_product.price, product_count: tea_count).apply_offer
  end

  def strawberires_offer
    StrawberriesOffer.new(product_price: strawberires_product.price, product_count: strawberires_count).apply_offer
  end

  def coffee_count
    basket.count('CF1')
  end

  def tea_count
    basket.count('GR1')
  end

  def strawberires_count
    basket.count('SR1')
  end

  def coffee_product
    ProductBuilder.build_product(code: 'CF1')
  end

  def tea_product
    ProductBuilder.build_product(code: 'GR1')
  end

  def strawberires_product
    ProductBuilder.build_product(code: 'SR1')
  end
end