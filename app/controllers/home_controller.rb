class HomeController < ApplicationController
	def index
		@url = Url.new url_params
		@urls = Url.all
	end


private

  def url_params
    params.fetch(:url, {}).permit(:link)
	end

end