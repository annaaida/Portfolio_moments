class Photographers::PhotographersController < ApplicationController

  def index

  	@photographer = current_photographer

  end

  def show

  	@photographer = current_photographer

  end

  def edit

  	@photographer = current_photographer

  end

  def update
  end
end
