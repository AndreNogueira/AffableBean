class AdminController < ApplicationController

  USER = { nbuser: 'secret', admin: 'admin' }

  before_action :verify_user, :if => :signed_in?, :only => [:index, :view_customers, :view_orders,
                                                            :customer_record, :order_record]

  layout 'admin'

  def index
  end

  def login
  end

  def logout
    session[:user] = nil
    redirect_to admin_path
  end

  def sign
    _user = params[:username]
    _pass = params[:password]
    if check_user?(_user.to_sym, _pass)
      session[:user] = _user
      redirect_to admin_path
    else
      render 'admin/error'
    end
  end

  def view_customers
    @customers = Customer.all
  end

  def view_orders
    @orders = CustomerOrder.all
  end

  def customer_record
    @customer_record = Customer.find(params[:id])
    @order           = CustomerOrder.find_by_customer_id(@customer_record)
  end

  def order_record
    _om            = OrderManager.new
    @order_summary = _om.order_details(params[:id])
  end

  private
  def signed_in?
    session[:user].nil?
  end

  def verify_user
    render 'admin/login'
  end

  def check_user?(username, password)
    USER[username]== password
  end
end