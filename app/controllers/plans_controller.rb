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
    @plan = Plan.new(plan_params)
    @plan.save
    redirect_to root_path
  end

  private

  def plan_params
    params.require(:plan).permit(:destination, :title, contents_attributes: [:id, :place_name, :description, :image, :price, :time, :access])
  end

end
