class ShoppingCartItem
	attr_accessor :quantity
	attr_reader :product

	def initialize(product)
		@product  = product
		@quantity = 1
	end
	def total
		(quantity * product.price).to_f
	end

	def increment_quantity
		@quantity += 1
	end
	def decrement_quantity
		@quantity -= 1
	end
end