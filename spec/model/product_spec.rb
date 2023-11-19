require_relative '../../model/product'

RSpec.describe Product do
  subject { described_class.new(code: 'CF1', name: 'Coffee', price: 11.23).display_price }

  describe '#display_price' do
    it { is_expected.to eq('11.23€') }
  end
end
