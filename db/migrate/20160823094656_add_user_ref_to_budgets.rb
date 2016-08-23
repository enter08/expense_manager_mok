class AddUserRefToBudgets < ActiveRecord::Migration
  def change
    add_reference :budgets, :user, index: true, foreign_key: true
  end
end
