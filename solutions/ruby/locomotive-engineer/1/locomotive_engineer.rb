class LocomotiveEngineer
  def self.generate_list_of_wagons(*ids)
    ids
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first,second,third,*wagons = each_wagons_id
    [third, *missing_wagons, *wagons, first, second]
  end

  def self.add_missing_stops(dest, **stops)
    {**dest, stops: stops.values}
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
