class AddImageToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :images, :string, array: true, :default => []
    add_column :rents, :images, :string, array: true, :default => []
    add_column :sales, :images, :string, array: true, :default => []
  end
end
