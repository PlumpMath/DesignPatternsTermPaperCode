require_relative 'usage_state'

require 'singleton'

class HighUsageState < UsageState

  include Singleton

  def initialize
    @defrag_time=0.02
    @defrag_rhythm=5
  end

  def defrag_data
    sleep (@defrag_time) # A real solution would have a real algorithm here...
  end
end