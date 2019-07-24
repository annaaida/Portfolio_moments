class ContactMailer < ActionMailer::Base

  default from: 'MOMENTS 管理人 <annaaidamailer@gmail.com>'
  layout 'mailer'

  def send_when_admin_reply(user, contact)
  	@user = user
  	@answer = contact.reply
	mail to: @user.email, subject:'【 MOMENTS 】お問い合わせの回答。'
  end

end
