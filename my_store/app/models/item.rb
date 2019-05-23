class Item < ApplicationRecord
	has_and_belongs_to_many :carts 
	#validates :name,presence:true
end
