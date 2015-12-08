class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :name
      t.text :description
      t.integer :min_dollar_amount
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
