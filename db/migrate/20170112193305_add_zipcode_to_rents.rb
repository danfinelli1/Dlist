class AddZipcodeToRents < ActiveRecord::Migration[5.0]
  def change
    add_column :rents, :zipcode, :integer
  end
end
