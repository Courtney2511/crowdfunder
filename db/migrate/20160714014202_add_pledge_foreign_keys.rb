class AddPledgeForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_column :pledges, :user_id, :integer
    add_column :pledges, :project_id, :integer
  end
end
