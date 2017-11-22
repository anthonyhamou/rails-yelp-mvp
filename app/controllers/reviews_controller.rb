class ReviewsController < ApplicationController

  before_action :set_restaurant, only: [:new, :create]

  def new
    @review = Review.new
    redirect_to restaurants_path
  end

  def create
    @review = Review.new(review_params)
    # creer le lien entre ce restaurant et la review qui vient d etre creee
    @review.restaurant = @restaurant
    # sauvegarder en base de donnees
    if @review.save
    # redirection vers la show du restaurant
      redirect_to restaurant_path(@restaurant)
    else
      render 'reviews/new'
    end
  end

  private
  def review_params
    # si qq un vient rajouter un nouvel input admin, on ignore cette information, question de sécurité
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
