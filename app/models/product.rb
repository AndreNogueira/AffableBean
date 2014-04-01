class Product < ActiveRecord::Base

	# Validations
	validates :name, presence: true
	validates :price, presence: true

	# Associations
	belongs_to :category
	has_many :ordered_products
end
