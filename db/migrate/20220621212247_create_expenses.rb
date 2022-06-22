class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.float :price
      t.string :description
      t.integer :user_id
      t.integer :account_id
    end
  end
end
