class Tenant < ApplicationRecord
	#belongs_to :idProperty
	has_one :property
end
