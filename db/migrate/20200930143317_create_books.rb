class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :image_url
      t.string :author
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
