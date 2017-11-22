class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :destroy, :edit, :update]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def edit
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save # true si resto sauvegardé en BDD
      redirect_to restaurant_path(@restaurant)
    else # reafficher la vue de cette action la, re-rendre la vue
      render :new
    end
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end
end
