class CreateAnwendungsSystems < ActiveRecord::Migration
  def change
    create_table :anwendungs_systems do |t|
      t.string :topic
      t.text :learning
      t.boolean :understood
      t.string :subject
      t.boolean :repeat

      t.timestamps null: false
    end
  end
end
