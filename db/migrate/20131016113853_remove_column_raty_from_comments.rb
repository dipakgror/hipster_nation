class RemoveColumnRatyFromComments < ActiveRecord::Migration
  def up
    remove_column :comments, :raty
  end

  def down
    add_column :comments, :raty, :float
  end
end
