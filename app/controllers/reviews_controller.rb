class ReviewsController < ApplicationController

  def new

    @photographer = Photographer.find(params[:photographer_id])
    @review = Review.new

  end

  def create

    @photographer = Photographer.find(params[:product_id])

    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.photographer_id = @photographer.id

    if @review.save
      redirect_to users_photographer_path(@photographer)
    else
      render :template => "reviews/new"
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:product_id, :name, :title, :body)
  end

end
