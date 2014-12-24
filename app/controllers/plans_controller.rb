class PlansController < ApplicationController
  def index
    @plan = Plan.new()
  end

  def new
    @plan = Plan.new()
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @plan = Plan.new(plan_params)
    respond_to do |format|
      format.html
      format.js {
        if @plan.save
          render :create
        else
          render :new
        end
      }
    end
  end


  def plan_params
    params.require(:plan).permit(:title, :date_from, :published)
  end


end
