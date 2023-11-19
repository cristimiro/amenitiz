require_relative '../../model/cart'

RSpec.describe Cart do
  let(:cart) { Cart.new(basket: %w[GR1 CF1 SR1 CF1 CF1]) }

  describe '#totals' do
    subject { cart.totals }

    it { is_expected.to eq('30.57€') }
  end
end
