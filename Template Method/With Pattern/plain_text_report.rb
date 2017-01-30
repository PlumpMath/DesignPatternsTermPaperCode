require_relative 'report'

class PlainTextReport < Report
  def output_start
    #No implementation for PlainTextReport
  end

  def output_head
    puts ("*** #{@title} ***")
    puts
  end

  def output_body_start
    #No implementation for PlainTextReport
  end

  def output_line(line)
    puts (line)
  end

  def output_body_end
    #No implementation for PlainTextReport
  end

  def output_end
    #No implementation for PlainTextReport
  end
end