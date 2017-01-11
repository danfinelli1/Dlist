class CreateRents < ActiveRecord::Migration[5.0]
  def change
    create_table :rents do |t|
      t.string :title
      t.text :body
      t.string :category
      t.decimal :price
      t.string :address
      t.integer :sqfootage
      t.integer :bed
      t.integer :bath
      t.belongs_to :user

      t.timestamps
    end
  end
end
