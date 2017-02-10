class Drink
  def initialize
    @elements = Hash.new
    @elements = {:water => 'Hot'}
    @cost = 1.5

  end

  def add (type, style, quantity, cost_per_unit)
    @cost += quantity * cost_per_unit
    if type=='coffee'
      add_coffee quantity,style
    end

    if type=='second coffee'
      add_second_coffee quantity,style
    end

    if type== 'milk'
      add_milk quantity,style
    end

    if type=='sugar'
      add_sugar quantity,style
    end

    if type=='syrup'
      add_syrup quantity,style
    end

    if type=='nip'
      add_nip quantity,style
    end
  end

  def add_coffee (quantity, description)
    full_description="#{quantity} shot(s) of #{description} coffee"
    puts "Coffee is #{description}"
    @elements[:coffee] = full_description
  end

  def add_second_coffee (quantity, description)
    full_description="#{quantity} shot(s) of #{description} coffee"
    puts "Second Coffee is #{description}"
    @elements[:second_coffee] = full_description
  end

  def add_milk (quantity, description)
    full_description="#{quantity} measures of #{description} milk"
    puts "Milk is #{description}"
    @elements[:milk] = full_description
  end

  def add_sugar (quantity, description)
    full_description="#{quantity} spoons of #{description} sugar"
    puts "Sugar is #{description}"
    @elements[:sugar] = full_description
  end

  def heat_milk
    puts 'Heating milk'
    sleep(0.5)
    puts 'Milk is heated'
  end

  def add_syrup (quantity,description)
    full_description="#{quantity} measure(s) of #{description} syrup"
    puts "Syrup is #{description}"
    @elements[:syrup] = full_description
  end

  def add_nip (quantity, description)
    full_description="#{quantity} shot(s) of #{description} nip"
    puts "Nip is #{description}"
    @elements[:nip] = full_description
  end

  def declare
    print 'Drink is '
    @elements.each do |key, value|
      print "#{value} + "
    end
    print 'costs '
    print @cost
    puts
  end

  def print_constituents
    puts "Water is #{@elements[:water]}"
    puts "Coffee is #{@elements[:coffee]}"
    #puts "Second coffee is #{second_coffee.type}"
    #puts "Milk is #{milk.type}"
    #puts "Sugar is #{sugar.type}"
    #puts "Syrup is #{syrup.type}"
    #puts "Nip is #{nip.type}"
  end

end