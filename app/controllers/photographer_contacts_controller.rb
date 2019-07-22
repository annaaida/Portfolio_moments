class PhotographerContactsController < ApplicationControlle
  def new

  	@contact = Contact.new

  end

  def create

  	@photographer = Photographer.find(params[:photographer_id])
  	@contact = Contact.new(contact_params)
    @contact.user_id = current_user.id
    @contact.photographer_id = @photographer.id

    if @contact.save
      flash[:notice] = "問い合わせを送信しました"
      redirect_to users_photographer_path
    end

  end

  def index

  	@contacts = Contact.page(params[:page]).per(50)

  end

  def show
  end

  private

  def contact_params
  	params.require(:contacts).permit(:user_id, :photographer_id, :first_name, :last_name, :mail, :contact_title, :contact_contents)
  end

  def photographer_params
    params.require(:photographer).permit(:profile_img, :price, :area, :mother_tongue, :language_1, :language_2, :introduction, :city_id)
  end

end
