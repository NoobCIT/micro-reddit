class RenameDescription < ActiveRecord::Migration[5.0]
  def change
    rename_column(:posts, :description, :title)
  end
end
