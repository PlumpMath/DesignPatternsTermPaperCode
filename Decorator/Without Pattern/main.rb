require_relative 'barista'
require 'ruby-prof'

#Loop 1000 times and make the same coffee
RubyProf.measure_mode = RubyProf::CPU_TIME
RubyProf.start
1000.times do
  barista=Barista.new
  barista.produce_drink
end
result=RubyProf.stop

result.threads.each do |thread|
  puts(thread.total_time)
end

# print a flat profile to text
printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)
