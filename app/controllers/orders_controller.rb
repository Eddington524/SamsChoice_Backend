class OrdersController < ApiController
  def index
    orders = current_api_user.orders.where(status:0) 
    render json: each_serialize(orders)
  end

  def create
    orders = current_api_user.orders.create(order_params)
    render json: orders
  end

  def update
    order_id = current_api_user.orders.last.id
    orders = Order.find(order_id).update(order_params)
    render json: orders
  end

  def destroy
    orders = current_api_user.orders.last.destroy
    render json: orders
  end

  private

  def order_params
    params.permit(:receiver_name, :receiver_phone, :receiver_address, :status)
  end
end