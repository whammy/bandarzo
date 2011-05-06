class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :stage_id
      t.integer :distance
      t.integer :repetitions
      t.string :pace
      t.string :note

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
