class GoalsController < ApplicationController
	before_filter :require_ownership, :only => [:edit, :destroy]


   def index
    @goals = current_user.goals
  end

  def show
    @goal = current_user.goals.find_by_id(params[:id])
  end

  def new
    @goal = Goal.new(params[:goal]||{})
  end

  def create
    @goal = current_user.goals.build(params[:goal])
    if current_user.save
      redirect_to goal_path(@goal)
    else
      render :new
    end
  end

  def edit
    @goal = current_user.goals.find_by_id(params[:id])
  end

  def update
    @goal = current_user.goals.find_by_id(params[:id])
    @goal.attributes = params[:goal]
    if @goal.save
      redirect_to :goals
    else
      render :edit
    end
  end

  def destroy
    @goal = current_user.goals.find_by_id(params[:id])
    @goal.destroy
  end
  
  
  def require_ownership
    @goal = Goal.find(params[:id])
    unless current_user && @goal.user == current_user 
      redirect_to root_path
      flash[:notice] = "You are not authorized to access this resource."
      return false
    end
  end

end
