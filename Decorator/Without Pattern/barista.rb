require_relative 'drink'

class Barista

  def produce_drink
    puts 'starting to make your drink'
    # make base
    drink=Drink.new
    # add coffee
    drink.add 'coffee', 'Regular', 2, 1

      # and milk
    #milk=Milk.new(coffee)
    #milk.add 'Skimmed', 1, 1
    #milk.heat_milk
  end

end