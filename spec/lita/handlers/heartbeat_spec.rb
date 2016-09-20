require "spec_helper"

describe Lita::Handlers::Heartbeat, lita_handler: true do

  describe "heartbeat endpoint" do

    it "should respond with heartbeat message" do
      response = http.get("/heartbeat")
      expect(response.body).to eq("I'm alive!")
    end

  end

end
