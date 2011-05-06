module WorkoutsHelper
  
  def reps_and_distance(item)
    
    if item.repetitions > 1
      item.repetitions.to_s + " X " + item.distance.to_s
    else
      item.distance.to_s
    end
  end
end
