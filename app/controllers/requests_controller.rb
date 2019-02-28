class RequestsController < ApplicationController
  def create
    @request = Request.new(request_params)
    @request.ip = request.remote_ip
    respond_to do |format|
      if @request.save
        @request.notify_managers!
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render json: @request, status: :created }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def request_params
    params.require(:request).permit(:phone)
  end
end
