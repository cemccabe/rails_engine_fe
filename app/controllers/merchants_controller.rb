class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFascade.get_all_merchants
  end

  def show
    @merchant = MerchantsFascade.get_single_merchant(params[:id])
    @items = MerchantsFascade.get_merchant_items(@merchant.id)
  end
end