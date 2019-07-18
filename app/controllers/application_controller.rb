class ApplicationController < ActionController::Base

	# ユーザ登録、ログイン認証などが実行される前に、configure_permitted_parametersを実行
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :search

	# ransack

	 def search
      @search = City.ransack(params[:q]) #(params[:q])に検索パラメーターが入る 検索する@searchオブジェクトを生成
      @result = @search.result(distinct: true).page(params[:page]).per(20) #検索結果を表示する@resultオブジェクトを生成
     end

    protected

     # 新規登録後のリダイレクト先
     def after_sign_up_path_for(resource)
	   if photographer?
	     new_photographer_path
	   else
	  	 users_users_path
	   end
	 end

	 # ログイン後のリダイレクト先
     def after_sign_in_path_for(resource)
    #    if 8?
	   #   photographer_top_path
	   # else
	  	 users_users_path
	   # end
	 end

	 # ログアウト後のリダイレクト先
	 def after_sign_out_path_for(resource)
	 	users_users_path
	 end

	 def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :kana_first_name, :kana_last_name, :tel, :photographer])
     end

end
