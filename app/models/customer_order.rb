class CustomerOrder < ActiveRecord::Base

	# Validations
	validates :confirmation_number, presence: true
	validates :amount, presence:true

	# Associations
	belongs_to :customer
	has_many :ordered_products
end
