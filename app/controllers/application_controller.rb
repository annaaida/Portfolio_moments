class ApplicationController < ActionController::Base

	# ユーザ登録、ログイン認証などが実行される前に、configure_permitted_parametersを実行
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :search

	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :kana_first_name, :kana_last_name, :tel, :photographer])
    end

    before_filter :set_search

    def search
      @search = City.ransack(params[:q])
      @cities = @search.result(distinct: true).page(params[:page]).per(20)
    end
end
