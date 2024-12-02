class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_hash
      t.string :icon_image

      t.timestamps
    end
  end
end
