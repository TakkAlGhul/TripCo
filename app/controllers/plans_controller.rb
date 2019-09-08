class PlansController < ApplicationController

  def index
  end

  def plans
    @plans = Plan.all
  end
  
  def show
    @plan = Plan.find(params[:id])
  end

  def new
    @plan = Plan.new
    @plan.contents.build
  end

  def create

  end

  private

  def plan_params
    params.requie(:plan).permit(:destination, :title).merge(user_id: current_user.id)
  end

end
