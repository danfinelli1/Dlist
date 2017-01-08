class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.string :category
      t.float :price
      t.string :address
      t.string :event_date
      t.integer :user_id

      t.timestamps
    end
  end
end
