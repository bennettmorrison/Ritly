class UrlsController < ApplicationController
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
    @url.hash_urls = rand(10000)
    if @url.save
      redirect_to @url
    else
    end
  end

  def show
    @url = Url.find(params[:id])
  end

  def redirectors
    @url = Url.find_by hash_urls: (params[:some_totally_random_value])
    if @url
      redirect_to @url.link
    else
      redirect_to root_path
    end
  end

private

  def url_params
    params.fetch(:url, {}).permit(:link)
	end

end