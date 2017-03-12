class UsageState
  @write_cycle_count=0

  def write_data (data, usage_count)
    if usage_count % @defrag_rhythm == 0
      print '.'
      defrag_data
    end
  end

  def read_data
    true
  end

  def defrag_data
    #Sublass is responsible for implementing the defrag algorithm
    print 'Defrag'
  end
end