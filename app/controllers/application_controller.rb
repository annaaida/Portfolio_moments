class ApplicationController < ActionController::Base

	# ユーザ登録、ログイン認証などが実行される前に、configure_permitted_parametersを実行
	before_action :configure_permitted_parameters, if: :devise_controller?
	#before_action :search

	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :kana_first_name, :kana_last_name, :tel, :photographer])
    end

    protected

     # 新規登録後のリダイレクト先
     def after_sign_up_path_for(resource)
	  if photographer?
	    new_photographers_photographer_path
	  else
	  	root_path
	  end
	 end
	 # ログイン後のリダイレクト先
     def after_sign_in_path(resource)
      if photographer?
	    photographers_photographers_path
	  else
	  	users_users_path
	  end
	 end
	 # ログアウト後のリダイレクト先
	  def after_sign_out_path(resource)
  		root_path
	  end

end
