class MarketController < ApplicationController

	def index
		session[:category] = root_path
	end

	def category
		@selected_category = Category.find(params[:id])
		session[:category] = @selected_category.id
	end

	def add_to_cart
		if session[:cart] == nil
			session[:cart] = ShoppingCart.new
		end
		session[:cart].add_item(Product.find(params[:id]))
		redirect_to :back
	end

	def view_cart
	end

	def checkout
		@customer = Customer.new
		session[:cart].calculate_total(@surcharge)
	end

	def clear_cart
		session[:cart].clear
		redirect_to :back
	end

	def update_cart
		_prod  = Product.find(params[:id])
		_quantity = params[:quantity]
    if _quantity.match(/\A[0-9]+\Z/)
      session[:cart].update_item(_prod, _quantity.to_f)
    end
		redirect_to :back
	end

	def purchase
		@customer = Customer.new(customer_params)
		if @customer.save
			om = OrderManager.new
			i  = om.place_order(@customer, session[:cart])
			if i != 0
				session[:cart].clear
				@order_summary = om.order_details(i)
				render 'confirmation'
			else
				flash.now[:error] = 'We were unable to process your order. Please try again!'
				@customer
				render 'checkout'
			end
		else
			@customer
			render 'checkout'
		end
	end

	private
	def customer_params
		params.require(:customer).permit(:name, :email, :phone, :address, :cc_number, :city_region)
	end
end
