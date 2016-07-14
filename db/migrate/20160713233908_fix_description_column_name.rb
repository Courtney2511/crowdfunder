class FixDescriptionColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :decription, :description
  end
end
