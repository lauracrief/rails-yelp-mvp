class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
     @review = Review.new
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit


  # POST /restaurants
  # POST /restaurants.json
  def create
     @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end


  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
       def restaurant_params
      params.require(:restaurant).permit(:name, :address, :category, :phone_number)
    end
end
