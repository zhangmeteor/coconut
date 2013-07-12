class Seat < ActiveRecord::Base
  belongs_to :flight
  validate :baggage_does_not_exceed_baggage_capacity,:seats_available
  def baggage_does_not_exceed_baggage_capacity
    if baggage > flight.baggage_allowance
      errors.add(:baggage,"You have too much baggage")
    end
  end
  def seats_available
    if flight.seats.size >= flight.capacity
     errors.add(:flight_id,"The flight is fully booked")
    end
  end
end
