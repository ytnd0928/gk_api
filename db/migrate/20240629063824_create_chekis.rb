class CreateChekis < ActiveRecord::Migration[6.0]
  def change
    create_table :chekis do |t|
      t.integer :user_id
      t.integer :idol_id
      t.string :photo_url
      t.date :photo_date
      t.text :comment

      t.timestamps
    end
    add_index :chekis, :user_id
    add_index :chekis, :idol_id
  end
end
