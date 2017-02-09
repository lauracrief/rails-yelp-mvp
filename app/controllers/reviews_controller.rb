class ReviewsController < ApplicationController
  before_action :set_restaurant
  def create

  end
  def new
  end

    private
    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
      def review_params
        params.require(:review).permit(:content, :rating)
      end
    end
end

