require_relative 'barista'

#Loop 1000 times and make the same coffee
1.times do
  barista=Barista.new
  barista.produce_drink
end

