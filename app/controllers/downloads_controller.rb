class DownloadsController < ApplicationController
  def index
    @request = Request.new
    @download = Download.first
  end
end
