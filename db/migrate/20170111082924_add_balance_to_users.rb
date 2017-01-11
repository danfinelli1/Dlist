class AddBalanceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :balance, :float, :default => 1000
  end
end
