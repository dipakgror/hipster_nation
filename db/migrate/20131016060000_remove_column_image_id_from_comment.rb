class RemoveColumnImageIdFromComment < ActiveRecord::Migration
  def up
    remove_column :comments, :image_id
  end

  def down
    add_column :comments, :image_id, :integer
  end
end
