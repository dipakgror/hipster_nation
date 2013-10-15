class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :image_id
      t.text :comment
      t.float :raty

      t.timestamps
    end
  end
end
