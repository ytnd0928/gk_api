class CreateIdols < ActiveRecord::Migration[6.0]
  def change
    create_table :idols do |t|
      t.integer :user_id
      t.string :name
      t.string :group
      t.string :icon_image
      t.string :group_image

      t.timestamps
    end
    add_index :idols, :user_id
  end
end
