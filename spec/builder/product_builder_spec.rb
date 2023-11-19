require_relative '../../builder/product_builder'
require_relative '../../model/product'

RSpec.describe ProductBuilder do
  let(:product) { ProductBuilder.build_product(code: product_code) }

  describe '#build_prodcut' do
    context 'when product code is for coffee' do
      let(:product_code) { 'CF1' }
      let(:expected_product) { Product.new(code: 'CF1', name: 'Coffee', price: 11.23) }

      it 'has same values like expected_result' do
        expect(product.code).to eq('CF1')
        expect(product.name).to eq('Coffee')
        expect(product.display_price).to eq('11.23€')
      end
    end

    context 'when product code is for green tea' do
      let(:product_code) { 'GR1' }
      let(:expected_product) { Product.new(code: 'GR1', name: 'Green Tea', price: 3.11) }

      it 'has same values like expected_result' do
        expect(product.code).to eq('GR1')
        expect(product.name).to eq('Green Tea')
        expect(product.display_price).to eq('3.11€')
      end
    end

    context 'when product code is for strawberries' do
      let(:product_code) { 'SR1' }
      let(:expected_product) { Product.new(code: 'SR1', name: 'Strawberries', price: 5.00) }

      it 'has same values like expected_result' do
        expect(product.code).to eq('SR1')
        expect(product.name).to eq('Strawberries')
        expect(product.display_price).to eq('5.0€')
      end
    end
  end
end