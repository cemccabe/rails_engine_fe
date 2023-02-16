class MerchantsFascade
  def self.get_all_merchants
    data = MerchantsService.get_all_merchants_response
    data[:data].map do |info|
      Merchant.new(info)
    end
  end

  def self.get_single_merchant(id)
    data = MerchantsService.get_single_merchant_response(id)
    Merchant.new(data[:data])
  end

  def self.get_merchant_items(id)
    data = MerchantsService.get_merchant_items_response(id)
    data[:data].map do |info|
      Item.new(info)
    end
  end
end