class OrderSummary
	attr_accessor :customer, :products, :order_record, :ordered_products

	def initialize(customer, products, order_record, ordered_products)
		@customer = customer
		@products = products
		@order_record = order_record
		@ordered_products = ordered_products
	end
end