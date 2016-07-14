class AddRewardIdColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :pledges, :reward_id, :integer
  end
end
