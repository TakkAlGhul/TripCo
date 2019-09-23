class PlansController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :edit, :destroy ]
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  def index
    @plans = Plan.order('created_at desc')
  end

  def plans
    @plans = Plan.all
  end
  
  def show
    @contents = @plan.contents.where(plan_id: params[:id])
  end

  def new
    @plan = Plan.new
    @plan.contents.build
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to plan_path(@plan)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    if @plan.user_id == current_user.id   
      if @plan.destroy
        redirect_to root_path(current_user.id)
      end
    end
  end

  def search
    @result = params[:search]
    @plan = Plan.find_by(title: params[:search])
    @keyword = Plan.search(params[:search]).order('created_at desc')
  end

  private

  def plan_params
    params.require(:plan).permit(:title, contents_attributes: [:id, :place_name, :description, :image, :time, :_destroy]).merge(user_id: current_user.id)
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end

end
