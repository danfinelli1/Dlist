class AddZipcodeToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :zipcode, :integer
  end
end
