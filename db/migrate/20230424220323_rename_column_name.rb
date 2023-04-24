class RenameColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :purchases, :user_id, :author_id
    rename_column :groups, :user_id, :author_id    
  end
end
