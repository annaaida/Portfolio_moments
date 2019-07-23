class Admins::ReviewsController < ApplicationController

  def index

  	@reviews = Review.page(params[:page]).per(50)

  end

  def edit

  	@review = Review.find(params[:id])
  	@photographer = @review.photographer

  end

  def update

    review = Review.find(params[:id])
    review.update(review_params)
    redirect_to admin_user_path(review.user)

  end


  def destroy

    review = Review.find(params[:id])
    review.destroy
  	redirect_to admin_user_path(review.user)

  end

private
  def review_params
    params.require(:review).permit(:name,:title, :body)
  end
end
