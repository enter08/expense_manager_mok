class BudgetsController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budgets_params)
    if @budget.save
      redirect_to expenses_path
    else
      render :new
    end
  end

  private
  def budgets_params 
    params.require(:budget).permit(:value)
  end
end
