require_relative 'person_behaviour'

require 'singleton'

class PensionerBehaviour < PersonBehaviour

  include Singleton

  def vote
    puts "Vote accepted"
  end

  def apply_for_bus_pass
    puts "Pass granted and it's free"
  end

  def conscript
    puts "Too old to be conscripted. Please donate funds instead..."
  end

  def apply_for_medical_card
    puts "medical card awarded"
  end

end