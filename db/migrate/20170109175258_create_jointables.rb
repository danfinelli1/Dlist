class CreateJointables < ActiveRecord::Migration[5.0]
  def change
    create_table :jointables do |t|

      t.timestamps

      t.belongs_to :user
      t.belongs_to :event
    end
  end
end
