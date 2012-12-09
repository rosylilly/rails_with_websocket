class WebsocketServer < Rack::WebSocket::Application
  def on_open(env)
    EM.add_periodic_timer(5) do
      send_data('websocket')
    end
  end
end
