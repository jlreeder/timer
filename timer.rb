#!/usr/bin/env ruby

def set_timer(minutes, task)
  puts "Timer set for #{minutes} minutes."
  timer(minutes)
  message = minutes_message(minutes)
  notify(message, task)
  puts "\nComplete"
end

def timer(minutes)
  i = 0
  until i >= minutes
    sleep(60)
    i += 1
    print "#{i} "
  end
end

def notify(message, task)
  system("terminal-notifier -message \"#{message}\" -title \"#{task}\"")
end

def minutes_message(minutes)
  "#{minutes} minutes have passed"
end

def process_time(raw_time)
  raw_time.to_i
end

def process_task(raw_task)
  raw_task.nil? ? 'Timer complete' : raw_task.join(' ').capitalize
end

if __FILE__ == $PROGRAM_NAME
  set_timer(process_time(ARGV[0]), process_task(ARGV[1..-1]))
end
