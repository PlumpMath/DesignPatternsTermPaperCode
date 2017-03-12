require_relative 'usage_state'

require 'singleton'

class MediumUsageState < UsageState

  include Singleton

  def initialize
    @defrag_time=0.005
    @defrag_rhythm=3
  end

  def defrag_data
    sleep (@defrag_time) # A real solution would have a real algorithm here...
  end
end
