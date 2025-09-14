require 'em-websocket'

EventMachine.run do
  puts "WebSocket server starting on ws://localhost:8080"

  EventMachine::WebSocket.start(host: "0.0.0.0", port: 8080) do |ws|
    ws.onopen do
      puts "Client connected"
    end

    ws.onmessage do |msg|
      puts "Received message: #{msg}"
    end

    ws.onclose do
      puts "Client disconnected"
    end
  end
end