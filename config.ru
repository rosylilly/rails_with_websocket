# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

map '/ws' do
  run WebsocketServer.new
end

map '/' do
  run RailsWithWebsocket::Application
end
