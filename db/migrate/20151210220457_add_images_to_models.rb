class AddImagesToModels < ActiveRecord::Migration
  def change
  	add_column :projects, :image_url, :string
  	add_column :rewards, :image_url, :string
  end
end
