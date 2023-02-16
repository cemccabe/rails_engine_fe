require 'rails_helper'

RSpec.describe MerchantsFascade do
  describe '#get_all_merchants' do
    it 'returns a list of all merchants' do
      merchants = MerchantsFascade.get_all_merchants

      expect(merchants).to be_an(Array)
      expect(merchants.first).to be_a(Merchant)
    end
  end

  describe '#get_single_merchant' do
    it 'returns a single merchant' do
      merchant = MerchantsFascade.get_single_merchant(1)

      expect(merchant).to be_a(Merchant)
      expect(merchant.id).to eq('1')
      expect(merchant.name).to eq('Schroeder-Jerde')
    end
  end

  describe '#get_merchant_items' do
    it 'returns a list of items attributed to the merchant' do
      items = MerchantsFascade.get_merchant_items(1)

      expect(items).to be_a(Array)
      expect(items.first).to be_an(Item)
    end
  end
end