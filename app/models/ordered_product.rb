class OrderedProduct < ActiveRecord::Base

	# Associations
	belongs_to :product
	belongs_to :customer_order
end
