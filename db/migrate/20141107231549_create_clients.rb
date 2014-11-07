class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.integer :internal_account_number
      t.decimal :default_billing_rate

      t.timestamps
    end
  end
end
