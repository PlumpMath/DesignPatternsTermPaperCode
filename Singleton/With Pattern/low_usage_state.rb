require_relative 'usage_state'

require 'singleton'

class LowUsageState < UsageState

  include Singleton

  def initialize
    @defrag_time=0.0002
    @defrag_rhythm=1
  end

  def defrag_data
    sleep (@defrag_time) # A real solution would have a real algorithm here...
  end
end