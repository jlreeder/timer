#!/usr/bin/env ruby

def set_timer(minutes)
  puts "Timer set for #{minutes} minutes"
  timer(minutes)
  body, title = minutes_message(minutes)
  notify(body, title)
  puts "\nComplete"
end

def timer(minutes)
  i = 0
  until i >= minutes
    sleep(1)
    i += 1
    print "#{i} "
  end
end

def notify(body, title)
  system("terminal-notifier -message \"#{body}\" -title \"#{title}\"")
end

def minutes_message(minutes)
  ["#{minutes} minutes have passed", 'Timer Complete']
end

if __FILE__ == $PROGRAM_NAME
  set_timer(ARGV[0].to_i)
end
