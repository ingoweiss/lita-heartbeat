module Lita
  module Handlers
    class Heartbeat < Handler
      # insert handler code here
      
      http.get "/heartbeat", :heartbeat

      def heartbeat(request, response)
        response.body << "I'm alive!"
      end

      Lita.register_handler(self)
    end
  end
end
