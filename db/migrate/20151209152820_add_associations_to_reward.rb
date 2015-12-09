class AddAssociationsToReward < ActiveRecord::Migration
  def change
  	add_column :pledges, :reward_id, :integer
  	add_foreign_key :pledges, column: :reward_id

  	add_column :rewards, :project_id, :integer
  	add_foreign_key :rewards, column: :project_id
  end
end
