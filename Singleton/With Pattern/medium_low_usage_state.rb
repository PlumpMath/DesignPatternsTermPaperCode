require_relative 'usage_state'

require 'singleton'

class MediumLowUsageState < UsageState

  include Singleton

  def initialize
    @defrag_time=0.002
    @defrag_rhythm=2
  end

  def defrag_data
    sleep (@defrag_time) # A real solution would have a real algorithm here...
  end
end
