require_relative '../../service/offer_service'

RSpec.describe OfferService do
  let(:offer_service) { described_class.new(basket: %w[GR1 CF1 SR1 CF1 CF1]) }

  describe '#apply_offers' do
    let(:total) { offer_service.apply_offers }

    it 'returns total sum' do
      expect(total).to eq(30.57)
    end
  end
end
