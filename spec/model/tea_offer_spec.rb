require_relative '../../model/tea_offer'

RSpec.describe TeaOffer do
  subject { described_class.new(product_price: product_price, product_count: product_count).apply_offer }
  let(:product_price) { 3.11 } 

  describe '#apply_offer' do
    context 'when product_count is 0' do
      let(:product_count) { 0 }

      it { is_expected.to eq(0) }
    end

    context 'when product_count is even' do
      let(:product_count) { 2 }

      it { is_expected.to eq(3.11) }
    end

    context 'when product_count is odd' do
      let(:product_count) { 3 }

      it { is_expected.to eq(6.22) }
    end
  end
end
