class ExpensesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @categories = Category.all
    if params[:category].nil?
      @search = current_user.expenses.search(params[:q])
    else
      @search = current_user.expenses.where(category_id: params[:category]).search(params[:q])
    end
    @expenses = @search.result
    if !current_user.budget.nil?
      @wallet = current_user.budget.value
    else
      @wallet = 0
    end
    @spent_money = 0
    current_user.expenses.each do |expense|
      if expense.category.outcome == false
        @wallet += expense.value
      else
        @spent_money += expenses.value
      end
    end
    if @wallet == 0
      @savings_ratio = 0
    else
      @savings_ratio = 100 - @spent_money*100/@wallet
    end
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new
    @expense = Expense.new
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])
    if @expense.update_attributes(expense_params)
      redirect_to expenses_path
    else
      render :edit
    end
  end

  def create
    @expense = Expense.new(expenses_params)
    if @expense.save
      redirect_to expenses_path
    else
      render :new
    end
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    redirect_to expenses_path
  end

  private
  def expenses_params 
    params.require(:expense).permit(:title, :value, :date_exp, :description, :category_id, :city_id, :user_id, :image)
  end
end
