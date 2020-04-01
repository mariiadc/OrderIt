# class EateriesController < ApplicationController
#   skip_before_action :authenticate_user!, only: [:show, :index, :root]
#   before_action :find, only: [:show, :edit, :update, :destroy]

#   def index

#     @eateries =  policy_scope([:eatery])

#     @eatery = Eatery.new


#     @eateries = @eateries.geocoded #returns flats with coordinates

#     @markers = @eateries.map do |good|
#       {
#         lat: eatery.latitude,
#         lng: eatery.longitude,
#         infoWindow: render_to_string(partial: "info_window", locals: { eatery: eatery })
#       }
#      # .order(created_at: :desc)
#    end
#   end
#   private

# #   def find
# #     @good = Good.find(params[:id])
# #   end
# #   def good_params
# #     params.require(:good).permit(:name, :description, :category, :price, :designer, :address, :user_id, photos: [])
# #   end
# # end

# end
