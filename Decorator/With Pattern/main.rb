require_relative 'barista'

#Loop 1000 times and make the same coffee
1000.times do
  bar=Barista.new
  bar.produce_drink
end

