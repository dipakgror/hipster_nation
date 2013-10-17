class AddAdviseToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :advice_for, :text
  end
end
