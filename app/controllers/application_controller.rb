class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	before_filter :surcharge_price
  #before_filter :miniprofiler
	#before_action :set_i18n_locale_from_params

	def surcharge_price
		@categories = Category.all
		@surcharge  = 3.00
	end
end
