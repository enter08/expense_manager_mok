class ExpensesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @categories = Category.all
    if params[:category].nil?
      @expenses = Expense.all
    else
      @expenses = Expense.where(category_id: params[:category])
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
  end

  private
  def expenses_params 
    params.require(:expense).permit(:title, :value, :date_exp, :description, :category_id, :city_id, :user_id, :image)
  end
end
