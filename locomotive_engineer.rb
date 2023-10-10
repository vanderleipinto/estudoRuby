#https://exercism.org/tracks/ruby/exercises/locomotive-engineer/edit
class LocomotiveEngineer
  def self.generate_list_of_wagons(*list)
    list
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first,second,id,*last = each_wagons_id
    return id, *missing_wagons, *last, first, second
  end

  def self.add_missing_stops(route, **stops)   
    return {**route , **{stops: stops.values.to_a}}    
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
