# frozen_string_literal: true

# Use this file to load your code
puts <<~ART
  ______ _           _
  | ___ \\ |         | |
  | |_/ / |__   ___ | |__   ___  ___
  |  __/| '_ \\ / _ \\| '_ \\ / _ \\/ __|
  | |   | | | | (_) | |_) | (_) \\__ \\
  \\_|   |_| |_|\\___/|_.__/ \\___/|___/
ART
puts "
phobos_boot.rb - find this file at #{File.expand_path(__FILE__)}

"

require_relative 'app/handlers/message_handler'

Phobos.configure('config/phobos.yml')

listener = Phobos::Listener.new(
  handler: MessageHandler,
  group_id: 'test-1',
  topic: 'test'
)

# start method blocks
Thread.new { listener.start }
