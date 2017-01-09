class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.string :category
      t.decimal :price
      t.string :address
      t.string :date

      t.timestamps
    end
  end
end
