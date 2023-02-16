class MerchantsService
  def self.conn
    conn = Faraday.new(url: 'http://localhost:3000')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_merchants_response
    response = conn.get('/api/v1/merchants')
    parse(response)
  end

  def self.get_single_merchant_response(id)
    response = conn.get("/api/v1/merchants/#{id}")
    parse(response)
  end

  def self.get_merchant_items_response(id)
    response = conn.get("/api/v1/merchants/#{id}/items")
    parse(response)
  end

  private_class_method :conn, :parse
end