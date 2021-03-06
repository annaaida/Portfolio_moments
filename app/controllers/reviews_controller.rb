class ReviewsController < ApplicationController

  def new

    @photographer = Photographer.find(params[:photographer_id])
    @review = Review.new

  end

  def create

    @photographer = Photographer.find(params[:photographer_id])

    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.photographer_id = @photographer.id

    if @review.save
      flash[:notice] = "レビューが投稿されました"
      redirect_to photographer_path(@photographer)
    else
      render :template => "reviews/new"
    end

  end

  def edit

    @review = Review.find(params[:id])
    @photographer = Photographer.find(params[:photographer_id])

  end

  def update

    review = Review.find(params[:id])
    review.update(review_params)
    flash[:notice] = "レビューが編集されました"
    redirect_to photographer_path(review.photographer)

  end

  def destroy

    review = Review.find(params[:id])
    review.destroy
    photographer = Photographer.find(params[:photographer_id])
    redirect_to photographer_path(photographer)

  end

  private

  def review_params
    params.require(:review).permit(:photographer_id, :name, :title, :body, :created_at)
  end

end
