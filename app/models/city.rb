class City < ApplicationRecord

  belongs_to :country
  has_many :city_photographers
  has_many :photographers, through: :city_photographers

  attachment :city_img

  validates :city_name, presence: true

  # ransack

	 def search
	  @search = self.ransack(params[:q]) #(params[:q])に検索パラメーターが入る 検索する@searchオブジェクトを生成
	  @result = @search.result(distinct: true).page(params[:page]).per(20) #検索結果を表示する@resultオブジェクトを生成
	 end

end
