class CreateWsks < ActiveRecord::Migration
  def change
    create_table :wsks do |t|
      t.string :topic
      t.text :learning
      t.boolean :understood
      t.boolean :repeat

      t.timestamps null: false
    end
  end
end
