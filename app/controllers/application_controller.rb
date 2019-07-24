class ApplicationController < ActionController::Base

	# ユーザ登録、ログイン認証などが実行される前に、configure_permitted_parametersを実行
	before_action :configure_permitted_parameters, if: :devise_controller?

    # 合計価格関数

    def calculation

		@book = current_user.book

		@book.each do |book|
		  @get_total_price = (book.start_time + book.end_time) * book.photographer.price
		end

		@tax = (@get_total_price * 0.08).floor
		@final_price = @get_total_price + @tax

	end

    protected

	 # 新規登録後のリダイレクト先 / ログイン後のリダイレクト先
     def after_sign_in_path_for(resource)
   	   users_users_path
	 end

	 # ログアウト後のリダイレクト先
	 def after_sign_out_path_for(resource)
	 	users_users_path
	 end

	 def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :kana_first_name, :kana_last_name, :tel, :photographer])
    	devise_parameter_sanitizer.permit(:account_update, keys: [:email, :first_name, :last_name, :kana_first_name, :kana_last_name, :tel, :photographer])
     end

end
