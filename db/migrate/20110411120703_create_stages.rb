class CreateStages < ActiveRecord::Migration
  def self.up
    create_table :stages do |t|
      t.integer :workout_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :stages
  end
end
