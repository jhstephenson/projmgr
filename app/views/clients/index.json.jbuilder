json.array!(@clients) do |client|
  json.extract! client, :id, :client_name, :address_1, :address_2, :city, :state, :zip_code, :contact_name, :contact_email, :contact_phone, :internal_account_number, :default_billing_rate
  json.url client_url(client, format: :json)
end
