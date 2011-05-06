class Stage < ActiveRecord::Base
  belongs_to :workout
  has_many :items, :dependent => :destroy
  
  validates_presence_of :name
  validates_associated :items
 
  accepts_nested_attributes_for :items, :allow_destroy => true, :reject_if => :all_blank #lambda {|attrs| attrs["distance"].blank? }
                                
  
  def total_distance
        items.size == 0 ? 0 : items.sum("distance * repetitions")
  end
  
  def make_copy
    
    s = clone
    
    s.items << items.collect { |i| i.clone}
    
    s   
  end
end
