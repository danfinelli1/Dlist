class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.string :title
      t.text :body
      t.string :category
      t.decimal :price
      t.integer :zipcode
      t.integer :buyer_id
      t.belongs_to :user

      t.timestamps
    end
  end
end
