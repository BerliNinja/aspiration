class CreateTens < ActiveRecord::Migration
  def change
    create_table :tens do |t|
      t.string :topic
      t.text :learning
      t.boolean :understood
      t.boolean :repeat

      t.timestamps null: false
    end
  end
end
