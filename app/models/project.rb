class Project < ActiveRecord::Base
  belongs_to :client
  has_many :activities
  has_one :projecttype
end
