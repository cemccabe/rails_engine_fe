require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
  it 'displays all of the merchants items' do
    visit merchant_path(1)

    expect(page).to have_content("Schroeder-Jerde's Items")
    expect(page).to have_content("Item Nemo Facere")
  end
end