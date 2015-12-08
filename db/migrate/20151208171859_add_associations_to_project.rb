class AddAssociationsToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :owner_id, :integer
  	add_foreign_key :projects, column: :owner_id
  end
end
