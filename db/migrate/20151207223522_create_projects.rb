class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :funding_target
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
