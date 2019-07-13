class Admins::ContactsController < ApplicationController

  def top
  end

  def index
    @contacts = Contact.page(params[:page])
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def create
    contact = Contact.find(params[:id])
    contact.update(contact_params)
    user = contact.user
    ContactMailer.send_when_admin_reply(user, contact).deliver

    redirect_to admin_contacts_path

  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to admin_contacts_path
  end

  def contact_params
    params.require(:contact).permit(:reply_text)
  end

end