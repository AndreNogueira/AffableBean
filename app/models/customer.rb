class Customer < ActiveRecord::Base

	# Validations
	validates :name , presence: true, length: {maximum: 45}
	validates :email , presence: true, length: {maximum: 45}
	validates :address , presence: true, length: {maximum: 45}
	validates :phone , presence: true, length: {maximum: 45}
	validates :city_region , presence: true, length: {maximum: 2}
	validates :cc_number , presence: true, length: {maximum: 19}

	# Associations
	has_many :customer_orders

end
