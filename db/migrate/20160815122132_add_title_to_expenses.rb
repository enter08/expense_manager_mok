class AddTitleToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :title, :string
  end
end
