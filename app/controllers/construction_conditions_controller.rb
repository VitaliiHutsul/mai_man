class ConstructionConditionsController < ApplicationController
  def index
    @request = Request.new
    @construction_conditions = ConstructionCondition.order_by_date
  end

  def show
    @request = Request.new
    @construction_condition = ConstructionCondition.find(params[:id])
  end
end
