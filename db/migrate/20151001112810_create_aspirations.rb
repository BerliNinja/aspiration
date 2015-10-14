class CreateAspirations < ActiveRecord::Migration
  def change
    create_table :aspirations do |t|
      t.string :aspiration
      t.datetime :start
      t.datetime :end
      t.string :unit
      t.integer :amount
      t.string :category
      t.text :description
      t.integer :coin

      t.timestamps null: false
    end
  end
end
