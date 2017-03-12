
# Mel Ó Cinnéide
# with thanks to Vince Huston for the example
# Extended to support parts 2 and 3 of the lab exercise i.e. teenager and apply_for_medical_card

class Person
  def initialize
    @age = 0
    @state = :child
  end

  def incr_age
    @age+=1
    if @age==13
      @state = :teenager
    end
    if @age==18
      @state = :adult
    end
    if @age==65
      @state = :pensioner
    end
    puts "Age is #{@age}"
  end

  def vote
    if @state==:child || @state==:teenager
      puts 'Too young to vote'
    else
      puts 'Vote accepted'
    end
  end

  def apply_for_bus_pass
    if @state==:pensioner
      puts 'Bus Pass granted'
    else
      puts 'Too young for a bus pass'
    end
  end

  def apply_for_medical_card
    if @state==:pensioner  || @state==:child
      puts 'Medical Card granted'
    else
      puts 'Sorry, you need to be a child or a pensioner to get a medical card'
    end
  end

  def conscript
    case @state
      when :pensioner then puts 'Too old to be conscripted'
      when :child then puts 'Too young to be conscripted'
      when :adult then puts 'Here is your gun'
      when :teenager then puts 'Time to be a soldier now'
      else puts 'You are either not born or very old'
    end
  end
end

def live_life
  p = Person.new
  for i in 1..100
    p.incr_age
    p.apply_for_medical_card
    p.apply_for_bus_pass
    p.vote
    p.conscript
  end
end
