
# Mel Ó Cinnéide
# with thanks to Vince Huston for the example

require_relative 'child_behaviour'
require_relative 'adult_behavior'
require_relative 'pensioner_behaviour'
require_relative 'teenager_behaviour'
require_relative 'state_manager'

class Person 
	def initialize  
		@age = 0
    @state_manager=StateManager.instance
		@behaviour = @state_manager.get_state(@age)
	end

	def incr_age
		@age+=1
    @behaviour=@state_manager.get_state(@age)
    puts "Age is #{@age}"
  end

  def set_age(age)
    @age=age
    @behaviour = @state_manager.get_state(@age)
  end
	 
	def vote
		@behaviour.vote
	end

	def apply_for_bus_pass
		@behaviour.apply_for_bus_pass
	end
					
	def conscript
    @behaviour.conscript
  end

  def apply_for_medical_card
    @behaviour.apply_for_medical_card
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

