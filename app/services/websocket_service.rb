require 'eventmachine'

class WebsocketService

  def initialize websocket
    @websocket = websocket
  end

  def start_websocket
    @trades = []
    EM.run do
      @websocket.start!
      EM.add_periodic_timer(1) { #reduce to 0.2 and see what happens
        @websocket.match do |trade|
          # p trade
          @trades << trade
          if @trades.length > 5 # 180 # for now
            @trades.shift
          end
          trade["trade_type"] = trade.delete("type") # 'type' is reserved, changing to trade_type
          Trade.create! trade
        end
      }
      EM.error_handler { |e|
        p "Websocket Error: #{e.message}"
      }
    end
  end

end
