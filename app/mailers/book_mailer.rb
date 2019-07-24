class BookMailer < ActionMailer::Base

  default from: 'MOMENTS 管理人 <annaaidamailer@gmail.com>'
  layout 'mailer'

  def send_when_user_book(user, book)
  	@user = user
    @book = book
	  mail to: @user.email, subject:'【 MOMENTS 】ご予約ありがとうございます。'
  end

end
