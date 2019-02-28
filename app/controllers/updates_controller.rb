class UpdatesController < ApplicationController

  def index
    @request = Request.new
    @updates = Update.order_by_date
  end

end
