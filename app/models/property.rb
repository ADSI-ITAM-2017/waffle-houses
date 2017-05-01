class Property < ApplicationRecord
  #belongs_to :idLessor
  #belongs_to :idTenant
  #belongs_to :idAddress
  
  has_one :address
  has_many :tenants
  has_one :lessor

end
