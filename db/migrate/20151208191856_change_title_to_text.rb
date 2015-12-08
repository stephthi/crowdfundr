class ChangeTitleToText < ActiveRecord::Migration
  def change
  	remove_column :projects, :title, :string
  	add_column :projects, :title, :text
  end
end
