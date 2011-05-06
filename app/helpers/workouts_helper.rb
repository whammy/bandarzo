module WorkoutsHelper
  
  def reps_and_distance(item)
    
    lhs = item.repetitions.nil? || item.repetitions == 0 ? "" : item.repetitions.to_s
    rhs = item.distance.nil? || item.distance == 0 ? "" : item.distance.to_s
    
    if lhs.length > 0 && rhs.length > 0
      lhs + " X " + rhs
    else
      lhs + rhs
    end
  end
end
