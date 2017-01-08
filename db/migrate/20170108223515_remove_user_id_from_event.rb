class RemoveUserIdFromEvent < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :user_id, :integer
  end
end
