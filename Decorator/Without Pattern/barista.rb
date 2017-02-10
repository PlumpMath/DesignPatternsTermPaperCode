require_relative 'drink'

class Barista

  def produce_drink
    puts 'Starting to make your drink'
    # make base
    drink=Drink.new
    # add coffee
    drink.add 'coffee', 'Regular', 2, 1

    # and milk
    drink.add 'milk', 'Skimmed', 1, 1

    # heat the milk
    drink.heat_milk

    # and sugar
    drink.add 'sugar', '', 0, 1

    # add a second type of coffee
    drink.add 'second coffee', 'Colombian blend', 1, 1

    # add syrup
    drink.add 'syrup', 'Vanilla', 1, 1

    # add nip
    drink.add 'nip', 'Jameson', 1, 2

    puts 'Your drink is now ready'

    drink.declare
    drink.print_constituents
  end

end