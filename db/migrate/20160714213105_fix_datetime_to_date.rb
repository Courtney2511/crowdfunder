class FixDatetimeToDate < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :deadline
    add_column :projects, :deadline, :date
  end
end
