require_relative 'State Exercise'
require 'ruby-prof'

def single_test_pass
  1000.times do
    live_life
  end
end

RubyProf.measure_mode = RubyProf::CPU_TIME
RubyProf.start

single_test_pass

result=RubyProf.stop


# print a flat profile to text
printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)