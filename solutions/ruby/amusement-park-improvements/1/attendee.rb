class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  def has_pass?
    return ! @pass_id.nil?
  end

  def fits_ride?(ride_minimum_height)
    return ride_minimum_height <= @height
  end

  def allowed_to_ride?(ride_minimum_height)
    return fits_ride?(ride_minimum_height) && has_pass?
  end
end



