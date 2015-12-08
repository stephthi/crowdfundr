class AddAssociationsToComment < ActiveRecord::Migration
  def change
  	add_column :comments, :project_id, :integer
  	add_foreign_key :comments, :projects

  	add_column :comments, :user_id, :integer
  	add_foreign_key :comments, :users
  end
end
