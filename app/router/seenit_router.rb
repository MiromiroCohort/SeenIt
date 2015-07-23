

command = ARGV.shift

seen_it = SeenItController.new
help_user = SeenItView.new

case command
  when "run" then seen_it.run
  else help_user.help
  end
