require 'rails_helper'

RSpec.describe Merchant do
  it 'exists' do
    data = {
      id: '99',
      attributes: {
        name: 'Test Name'
      }
    }

    merchant = Merchant.new(data)

    expect(merchant).to be_a(Merchant)
    expect(merchant.id).to eq('99')
    expect(merchant.name).to eq('Test Name')
  end
end