class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :url
      t.belongs_to :event
      t.belongs_to :rent
      t.belongs_to :sale

      t.timestamps
    end
  end
end
