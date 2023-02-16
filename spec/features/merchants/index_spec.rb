require 'rails_helper'

RSpec.describe 'Merchant Index Page' do
  it 'displays a list of all merchants by name' do
    visit merchants_path

    expect(page).to have_link('Schroeder-Jerde')
    click_on 'Schroeder-Jerde'
    expect(current_path).to eq(merchant_path(1))
  end
end