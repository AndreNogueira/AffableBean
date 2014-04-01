class ShoppingCart
	attr_accessor :items
	attr_reader :total, :number_of_items

	def initialize
		@items           = []
		@number_of_items = 0
		@total           = 0
	end

	def clear
		@items.clear
		@number_of_items = 0
		@total           = 0
	end

	def add_item(product)
		_new_item = true
		@items.each do |item|
			if item.product.id == product.id
				_new_item = false
				item.increment_quantity
			end
		end
		@items << ShoppingCartItem.new(product) if _new_item
	end
	def update_item(product,quantity)
		_qt = quantity.to_i
		if _qt >= 0
			_it = nil
			@items.each do |item|
				if item.product.id == product.id
					if _qt != 0
						item.quantity = _qt
					else
						_it = item
						break
					end
				end
			end
			@items.delete(_it) if _it != nil
		end
	end
	def calculate_total(surchage)
		@total = subtotal + surchage.to_f
	end
	def subtotal
		_amount = 0
		@items.each do |item|
			_amount += (item.quantity * item.product.price)
		end
		_amount.to_f
	end

	def number_of_items
		@number_of_items = 0
		items.each do |item|
			@number_of_items += item.quantity
		end
		@number_of_items
	end


	private
	def total=(value)
		@total = value
	end

	def number_of_items=(value)
		@number_of_items = value
	end
end