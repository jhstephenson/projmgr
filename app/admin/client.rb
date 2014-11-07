ActiveAdmin.register Client do
  permit_params :client_name, :address_1, :address_2, :city, :state, :zip_code, :contact_name, :contact_email, :contact_phone, :internal_account_number, :default_billing_rate


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
