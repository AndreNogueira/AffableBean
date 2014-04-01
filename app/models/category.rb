class Category < ActiveRecord::Base

	# Validations
	validates :name, presence: true, length: { maximum: 45}

	# Associations
	has_many :products
end
