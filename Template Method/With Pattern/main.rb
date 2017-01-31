require_relative 'html_report'
require_relative 'plain_text_report'

html_report = HTMLReport.new
plain_text_report = PlainTextReport.new

1000.times do
  puts '-----------------------------------------------'
  plain_text_report.output_report
  puts '-----------------------------------------------'
  html_report.output_report
  puts '-----------------------------------------------'
end
