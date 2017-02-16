require_relative 'person_behaviour'

require 'singleton'

class ChildBehaviour < PersonBehaviour

  include Singleton

  def vote
    puts "Too young to vote"
  end

  def apply_for_bus_pass
    puts "Too young for a bus pass"
  end

  def conscript
    puts "Too young to be conscripted."
  end

  def apply_for_medical_card
    puts "medical card awarded"
  end

end