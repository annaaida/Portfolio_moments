class Users::ContactsController < ApplicationController

  def new

  	@contact = Contact.new

  end

  def create

  	@contact = Contact.new(contact_params)
	  @contact.user_id = current_user.id

  	if @contact.save!
  		flash[:notice] = "送信に成功しました"
  		redirect_to users_user_path(current_user)
    else
  		flash[:notice] = "送信に失敗しました"
  		render("contacts/new")
    end

  end

  private

  def contact_params
  	params.require(:contact).permit(:first_name, :last_name, :mail, :contact_title, :contact_contents)
  end

end
