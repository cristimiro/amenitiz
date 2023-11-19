require_relative '../../model/product'

RSpec.describe Product do
  let(:product) { Product.new(code: 'CF1', name: 'Coffee', price: 11.23) }

  describe '#display_price' do
    subject { product.display_price }

    it { is_expected.to eq('11.23€') }
  end
end
