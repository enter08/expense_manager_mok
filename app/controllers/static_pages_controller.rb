class StaticPagesController < ApplicationController
  def home
    @categories = Category.where(outcome: true)
    @last_category = Category.last
    @incomes = Category.where(outcome: false)
  end
  def contact
  end
end