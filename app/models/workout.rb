class Workout < ActiveRecord::Base
  has_many :stages, :dependent => :destroy
  validates_presence_of :title
  validates_associated :stages
  
  accepts_nested_attributes_for :stages, 
                                :allow_destroy => true
  def total_distance
      total = 0
      stages.each do |stage|
        total += stage.total_distance
      end
      total
  end
  
  def make_copy
    
    w = clone
    
    w.stages << stages.collect { |s| s.make_copy}
    
    w   
  end
end
