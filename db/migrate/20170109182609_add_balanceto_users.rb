class AddBalancetoUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :balance, :float
  end
end
