class Client < ActiveRecord::Base
  has_many :projects
  validates_formatting_of :zip_code, using: :us_zip
  validates_formatting_of :contact_email, using: :email
end
