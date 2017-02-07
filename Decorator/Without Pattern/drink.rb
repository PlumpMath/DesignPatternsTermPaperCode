class Drink
  def initialize
    @elements = ['Water','hot water']
    @cost = 1.5

  end

  ##def add_item(type, quantity, description, price)
  #  @cost += price * quantity
  #end

  def add (type, style, quantity, cost_per_unit)
    @cost += quantity * cost_per_unit
    if type=='coffee'
      add_coffee quantity,style
    end
  end

  def add_coffee (quantity, description)
    full_description="#{quantity} shot(s) of #{description} coffee"
    puts "Coffee is #{description}"
    @elements += ['Coffee', full_description]
  end

end