class AddAssociationsToPledge < ActiveRecord::Migration
  def change
  	add_column :pledges, :project_id, :integer
  	add_foreign_key :pledge, :projects

  	add_column :pledges, :user_id, :integer
  	add_foreign_key :pledges, :users
  end
end
