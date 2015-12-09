class AddAssociationsToReward < ActiveRecord::Migration
  def change
  	add_column :rewards, :pledge_id, :integer
  	add_foreign_key :rewards, column: :pledge_id

  	add_column :rewards, :project_id, :integer
  	add_foreign_key :rewards, column: :project_id
  end
end
