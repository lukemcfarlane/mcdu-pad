# server.rb
require 'em-websocket'
require 'logger'

# Enable unbuffered stdout in development to work with foreman:
$stdout.sync = true

# Setup a Foreman-friendly logger
logger = Logger.new(STDOUT)
logger.level = Logger::INFO
logger.formatter = proc do |severity, datetime, _progname, msg|
  "[#{severity}] #{msg}\n"
end

EventMachine.run do
  # Log after reactor starts
  EventMachine.next_tick do
    logger.info "WebSocket server starting on ws://localhost:8080"
  end

  EventMachine::WebSocket.start(host: "0.0.0.0", port: 8080) do |ws|
    ws.onopen do
      logger.info "Client connected"
    end

    ws.onmessage do |msg|
      logger.info "Received message: #{msg}"
    end

    ws.onclose do
      logger.info "Client disconnected"
    end
  end
end
