class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.decimal :value
      t.date :budget_date

      t.timestamps null: false
    end
  end
end
