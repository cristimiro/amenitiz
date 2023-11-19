require_relative '../../model/coffee_offer'

RSpec.describe CoffeeOffer do
  subject { described_class.new(product_price: product_price, product_count: product_count).apply_offer }
  let(:product_price) { 11.23 }

  describe '#apply_offer' do
    context 'when product_count is 0' do
      let(:product_count) { 0 }

      it { is_expected.to eq(0) }
    end

    context 'when product_count is less than 3' do
      let(:product_count) { 1 }

      it { is_expected.to eq(11.23) }
    end

    context 'when product_count is 3 or more' do
      let(:product_count) { 3 }

      it { is_expected.to eq(product_count * ((2.00 / 3.00) * product_price)) }
    end
  end
end
