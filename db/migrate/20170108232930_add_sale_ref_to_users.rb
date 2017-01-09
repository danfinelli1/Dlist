class AddSaleRefToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :sale, foreign_key: true
  end
end
