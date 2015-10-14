class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.integer :mood_count
      t.string :activity
      t.datetime :time

      t.timestamps null: false
    end
  end
end
