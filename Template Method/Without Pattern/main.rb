require_relative 'report'

report = Report.new
puts '-----------------------------------------------'
report.output_report (:plain)
puts '-----------------------------------------------'
report.output_report (:html)
puts '-----------------------------------------------'