require_relative '../model/product'

# Class used to build different instances of producrt
class ProductBuilder
  PRODUCT_NAMES = {
    'GR1' => 'Green Tea',
    'SR1' => 'Strawberries',
    'CF1' => 'Coffee'
  }.freeze

  PRODUCT_PRICES = {
    'GR1' => 3.11,
    'SR1' => 5.0,
    'CF1' => 11.23
  }.freeze

  def self.build_product(code:)
    Product.new(code: code, name: PRODUCT_NAMES[code], price: PRODUCT_PRICES[code])
  end
end
