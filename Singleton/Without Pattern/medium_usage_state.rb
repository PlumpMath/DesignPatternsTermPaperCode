require_relative 'usage_state'


class MediumUsageState < UsageState


  def initialize
    @defrag_time=0.005
    @defrag_rhythm=3
  end

  def defrag_data
    sleep (@defrag_time) # A real solution would have a real algorithm here...
  end
end
