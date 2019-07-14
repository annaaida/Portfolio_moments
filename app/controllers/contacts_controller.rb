class ContactsController < ApplicationController

  def index

  	@contacts = Contact.page(params[:page]).per(50)

  end

  def show
  end

  def new
  end

  def create
  end
end
