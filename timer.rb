def set_timer(minutes)
  puts "Timer set for #{minutes} minutes"
  timer(minutes)
  notify(minutes_message(minutes))
end

def timer(minutes)
  i = 0
  until i == minutes
    sleep(50)
    i += 1
    print "#{i} "
  end
end

def notify(body, title)
  system("terminal-notifier -message \"#{body}\" -title \"#{title}\"")
end

def minutes_message(minutes)
  ["#{minutes} complete", 'Timer Complete']
end

if __FILE__ == $PROGRAM_NAME
  set_timer(10)
end
