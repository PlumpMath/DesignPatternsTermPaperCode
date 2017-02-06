require_relative 'drink'

class Coffee < Drink
  def initialize(real_drink)
    @real_drink=real_drink
  end

  @type = ""
  @qualtity=0
  @cost=0

  def type
    @type
  end

  def description
    @real_drink.description + " + #{@quantity} shot(s) of #{@type} coffee"
  end

  def cost
    @real_drink.cost +  (@quantity*@cost)

  end

  def declare
    puts "Drink is #{description} and costs #{cost}"
  end

  def add (type, quantity, cost)
    @type=type
    @quantity=quantity
    @cost=cost
  end
end
