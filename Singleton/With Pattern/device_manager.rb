require_relative 'low_usage_state'
require_relative 'medium_usage_state'
require_relative 'medium_high_usage_state'
require_relative 'medium_low_usage_state'
require_relative 'high_usage_state'

class DeviceManager

  def initialize
    @behaviour=LowUsageState.instance
    puts 'Device created in low usage state'
    @usage_percentage=0
  end

  def read_data
    @behaviour.read_data
  end

  def write_data
    # Check to see if the usage has passed a boundary and then switch state
    if @usage_percentage==100
      puts ''
      puts 'Device is full and cant store any more data'
    else
      @usage_percentage+=1

      if @usage_percentage== 20
        @behaviour=MediumLowUsageState.instance
        puts''
        puts 'device has switched state to medium low usage state'
      end

      if @usage_percentage==40
        @behaviour=MediumUsageState.instance
        puts ''
        puts 'device has switched state to medium usage state'
      end

      if @usage_percentage==60
        @behaviour=MediumHighUsageState.instance
        puts ''
        puts 'device has switched state to medium high usage state'
      end

      if @usage_percentage==80
        @behaviour=HighUsageState.instance
        puts ''
        puts 'device has switched state to high usage state'
      end

      @behaviour.write_data
    end

  end

end