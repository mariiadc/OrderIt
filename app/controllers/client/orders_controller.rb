module Client
  class OrdersController < ApplicationController
    before_action :set_order, only: [:show, :create]

    def index
      @orders = policy_scope([:client, Order])


    end

    def new
      @order = Order.new
      authorize [:client, @order]
    end

    def show
       authorize [:client, @order]
       # @room = Room.find(@booking.room_id)
       # @service = Service.where(category: 'Wellness').first
       # @chat_room = ChatRoom.find_by(booking_id: params[:id])
    end

    def create
      @order = Order.new(order_params)
      authorize @order

      respond_to do |format|
        if @order.save
          format.html { redirect_to @order, notice: 'Order was successfully created.' }
          # format.json { render :show, status: :created, location: @booking }
        else
          format.html { render :new }
          # format.json { render json: @booking.errors, status: :unprocessable_entity }
        end
      end
    end

    private

    def set_booking
      @order = Order.find(params[:id])
    end

    def booking_params
      params.require(:order).permit(:order_number)
    end
  end
end
