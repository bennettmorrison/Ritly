class HomeController < ApplicationController
	def index
		@url = Url.new url_params
		@urls = Url.all
	end

  def new
    @url = Url.new
  end

  def create
    safe_url = params.require(:url).permit(:link)
    @url = Url.new safe_url
    @url.hash = rand(10000)
    if @url.save
      redirect_to @url
    else
    end
  end

  def show
  end
  
private

  def url_params
    params.fetch(:url, {}).permit(:link)
	end

end