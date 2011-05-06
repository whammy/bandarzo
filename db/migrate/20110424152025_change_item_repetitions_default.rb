class ChangeItemRepetitionsDefault < ActiveRecord::Migration
  def self.up
    change_column_default(:items,:repetitions,1)
  end

  def self.down
  end
end
