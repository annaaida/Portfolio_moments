class BookMailer < ApplicationMailer

  default from: 'MOMENTS 管理人 <annaaidamailer@gmail.com>'
  layout 'mailer'

  def send_when_user_book(user, book)
  	@user = user
  	@date = book.date
  	@time = book.time
  	@message = bok.message
  	@meeting_spot = book.meeting_spot
  	@total_price = book.total_price
  	@photographer = book.photographer_id
	mail to: @user.email, subject:'【 MOMENTS 】ご予約ありがとうございます。'
  end
end
