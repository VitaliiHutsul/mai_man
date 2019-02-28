class NewsController < ApplicationController

  def index
    @request = Request.new
    @news = News.order_by_date
  end

  def show
    @request = Request.new
    @news = News.find(params[:id])
    @latest_news = News.latest(@news)
  end

end
