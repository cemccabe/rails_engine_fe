require 'rails_helper'

RSpec.describe MerchantsService do
  describe '#get_all_merchants_response' do
    it 'returns all merchant data' do
      merchants = MerchantsService.get_all_merchants_response

      expect(merchants).to be_a(Hash)
      expect(merchants[:data]).to be_an(Array)

      merchants_data = merchants[:data].first

      expect(merchants_data).to have_key :id
      expect(merchants_data[:id]).to be_a(String)
      
      expect(merchants_data).to have_key :type
      expect(merchants_data[:type]).to be_a(String)
      
      expect(merchants_data).to have_key :attributes
      expect(merchants_data[:attributes]).to be_a(Hash)

      expect(merchants_data[:attributes]).to have_key :name
      expect(merchants_data[:attributes][:name]).to be_a(String)
    end
  end

  describe '#get_single_merchants_response' do
    it 'returns one merchant given its id' do
      merchant = MerchantsService.get_single_merchant_response(1)

      expect(merchant).to be_a(Hash)
      expect(merchant[:data]).to be_a(Hash)

      merchant_data = merchant[:data]

      expect(merchant_data).to have_key :id
      expect(merchant_data[:id]).to be_a(String)
      
      expect(merchant_data).to have_key :type
      expect(merchant_data[:type]).to be_a(String)
      
      expect(merchant_data).to have_key :attributes
      expect(merchant_data[:attributes]).to be_a(Hash)

      expect(merchant_data[:attributes]).to have_key :name
      expect(merchant_data[:attributes][:name]).to be_a(String)
    end
  end
  
  describe '#get_merchant_items_response' do
    it 'returns a merchants items' do
      items = MerchantsService.get_merchant_items_response(1)

      expect(items).to be_a(Hash)
      expect(items[:data]).to be_an(Array)

      items_data = items[:data].first

      expect(items_data).to have_key :id
      expect(items_data[:id]).to be_a(String)
      
      expect(items_data).to have_key :type
      expect(items_data[:type]).to be_a(String)
      
      expect(items_data).to have_key :attributes
      expect(items_data[:attributes]).to be_a(Hash)

      expect(items_data[:attributes]).to have_key :name
      expect(items_data[:attributes][:name]).to be_a(String)

      expect(items_data[:attributes]).to have_key :description
      expect(items_data[:attributes][:description]).to be_a(String)

      expect(items_data[:attributes]).to have_key :unit_price
      expect(items_data[:attributes][:unit_price]).to be_a(Float)

      expect(items_data[:attributes]).to have_key :merchant_id
      expect(items_data[:attributes][:merchant_id]).to be_an(Integer)
    end
  end
end