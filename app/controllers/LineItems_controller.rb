class LineItemsController < ApiController
  before_action :set_line_item, only: [:destroy]

    def index
      order_id= current_api_user.orders.where(status: 2).ids
      puts('========================1===========================')
      puts(order_id)
      line_items = LineItem.where(order_id: order_id)
      puts(line_items)
      puts('========================2===========================')
      render json: line_items
    end

    def create
      order_line_items = current_api_user.orders.last.line_items
      line_item = order_line_items.create(line_item_params)
      render json: line_item
    end
  
    def destroy
      line_item = @line_item.destroy
      render json: line_item
    end

    def show
      line_items = current_api_user.orders.last.line_items.last
      render json: serialize(line_items)
    end
    private
    
    def line_item_params
      params.require(:line_item).permit(:option_id, :quantity, :total_price)
    end
    
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end
end