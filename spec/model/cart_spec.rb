require_relative '../../model/cart'

RSpec.describe Cart do
  subject { described_class.new(basket: %w[GR1 CF1 SR1 CF1 CF1]).totals }

  describe '#totals' do
    it { is_expected.to eq('30.57€') }
  end
end
