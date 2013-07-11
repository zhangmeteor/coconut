json.array!(@flights) do |flight|
  json.extract! flight, :departure, :arrival, :destination, :baggage_allowance, :capacity
  json.url flight_url(flight, format: :json)
end
