json.array!(@seats) do |seat|
  json.extract! seat, :flight_id, :name, :baggage
  json.url seat_url(seat, format: :json)
end
