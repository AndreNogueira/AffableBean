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

	#protected
	#def set_i18n_locale_from_params
	#	if params[:locale]
	#		if I18n.available_locales.map(&:to_s).include?(params[:locale])
	#			I18n.locale = params[:locale]
	#		end
	#	end
	#end
	#def default_url_options
	#	{locale: I18n.locale}
	#end
  private
  def miniprofiler
    Rack::MiniProfiler.authorize_request
  end
end
