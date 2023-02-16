require 'rails_helper'

RSpec.describe Item do
  it 'exists' do
      data = {
        id: '99',
        attributes: {
          name: 'Test Name',
          description: 'Test description.',
          unit_price: 12.43,
          merchant_id: 22
        }
      }
      
    item = Item.new(data)
    
    expect(item).to be_an(Item)
    expect(item.id).to eq('99')
    expect(item.name).to eq('Test Name')
    expect(item.description).to eq('Test description.')
    expect(item.unit_price).to eq(12.43)
    expect(item.merchant_id).to eq(22)
  end
end