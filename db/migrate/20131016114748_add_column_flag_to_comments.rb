class AddColumnFlagToComments < ActiveRecord::Migration
  def change
    add_column :comments, :flag, :string, :default => "pending"
  end
end
