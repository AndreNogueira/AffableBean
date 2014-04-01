#require 'new_relic/agent/method_tracer'

class OrderManager
 #include ::NewRelic::Agent::MethodTracer

  Summary = Struct.new(:customer, :products, :order_record, :ordered_products)

  def place_order(customer, cart)
    co = add_order(customer, cart)
    if co != nil
      add_ordered_items(co, cart)
      co.id
    else
      0
    end
  end

  def order_details(order_id)
    order     = CustomerOrder.find(order_id)
    ops       = OrderedProduct.all.where(customer_order_id: order_id)
    products  = ops.collect { |x| x }
    order_map = Summary.new(order.customer, products, order, ops)
    #order_map = OrderSummary.new(order.customer, products, order, ops)
  end

  private
  def add_order(customer, cart)
    order                     = CustomerOrder.new
    order.customer            = customer
    order.amount              = cart.total
    order.confirmation_number = rand(999999999)
    (order.save) ? order : nil
  end

  def add_ordered_items(customer_order, cart)
    #cart.items.each do |item|
     # OrderedProduct.create(customer_order: customer_order, product: item.product, quantity: item.quantity)
    #end
    ops = []
    cart.items.each do |item|
      ops << OrderedProduct.new(customer_order: customer_order, product: item.product, quantity: item.quantity)
    end
    OrderedProduct.import ops
  end
  #add_method_tracer :add_ordered_items, 'OrderManager/add_ordered_items'
end
