require_relative 'State Exercise'
require 'ruby-prof'

RubyProf.measure_mode = RubyProf::CPU_TIME
RubyProf.start

1000.times do
  live_life
end

result=RubyProf.stop


# print a flat profile to text
printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)