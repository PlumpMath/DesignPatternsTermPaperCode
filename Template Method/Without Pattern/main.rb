require_relative 'report'

report = Report.new

1000.times do
  puts '-----------------------------------------------'
  report.output_report (:plain)
  puts '-----------------------------------------------'
  report.output_report (:html)
  puts '-----------------------------------------------'
end
