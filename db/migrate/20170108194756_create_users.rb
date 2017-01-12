class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.float :rating
      t.string :city
      t.boolean :is_admin, default: false
      t.float :balance, default: 1000.0

      t.timestamps
    end
  end
end
