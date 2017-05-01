class Address < ApplicationRecord
  #belongs_to :idProperty
  has_one :properties
end
