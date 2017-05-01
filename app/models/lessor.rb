class Lessor < ApplicationRecord
	#belongs_to :idProperty
	has_many :properties
end
