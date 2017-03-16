require_relative 'html_report'
require_relative 'plain_text_report'
require 'ruby-prof'



def single_test_pass
  html_report = HTMLReport.new
  plain_text_report = PlainTextReport.new
  1000.times do
    puts '-----------------------------------------------'
    plain_text_report.output_report
    puts '-----------------------------------------------'
    html_report.output_report
    puts '-----------------------------------------------'
  end
end

def profile_runs_CPU
  run_count=0
  output_file=File.open('CPUtime - with.csv', 'w')
  output_file.puts 'Run number:,Thread number:,CPU_Total_Time'
  10000.times do
    run_count+=1
    RubyProf.measure_mode = RubyProf::CPU_TIME
    RubyProf.start

    single_test_pass

    result=RubyProf.stop

    thread_count=0
    result.threads.each do |thread|
      output_file.puts "#{run_count},#{thread_count},#{thread.total_time}"
      thread_count+=1
    end
  end
  output_file.close
end

def profile_runs_mem
  run_count=0
  output_file=File.open('MemUsage - with.csv', 'w')
  output_file.puts 'Run number:,Kb in use'

  10000.times do
    #`echo -n -e "\033]0;TEST PASS - #{run_count}\007"`
    run_count+=1

    single_test_pass

    memory_usage = `ps -o rss= -p #{Process.pid}`.to_i # in kilobytes
    output_file.puts "#{run_count},#{memory_usage}"

  end
  output_file.close
end

profile_runs_CPU
profile_runs_mem

