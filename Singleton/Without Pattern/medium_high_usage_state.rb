require_relative 'usage_state'

class MediumHighUsageState < UsageState

  def initialize
    @defrag_time=0.01
    @defrag_rhythm=4
  end

  def defrag_data
    sleep (@defrag_time) # A real solution would have a real algorithm here...
  end
end
