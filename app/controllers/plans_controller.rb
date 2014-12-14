class PlansController < ApplicationController
  def index
    @plan = Plan.new()
  end

  def new

  end

  def create
    @plan = Plan.new(plan_params)
    render text: "hi"
  end


  def plan_params
    params.require(:plan).permit(:title, :date_from, :published)
  end


end
