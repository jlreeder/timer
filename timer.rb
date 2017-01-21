def notify(message, title)
  system("terminal-notifier -message \"#{message}\" -title \"#{title}\"")
end

if __FILE__ == $PROGRAM_NAME
  notify("test message", "message")
end
