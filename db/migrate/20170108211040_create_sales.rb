class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.string :title
      t.text :body
      t.string :category
      t.float :price
      t.integer :zipcode
      t.integer :views
      t.integer :user_id

      t.timestamps
    end
  end
end
