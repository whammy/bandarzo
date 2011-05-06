class Item < ActiveRecord::Base
  belongs_to :stage
  
  def total_distance
    distance * repetitions
  end
  
  
end
