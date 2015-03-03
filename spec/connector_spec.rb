require "spec_helper"
require_relative "../lib/connector"

RSpec.describe Connector do
  let(:video) { FactoryGirl.build(:video) }

  describe "#play" do
    it "returns a 200 resp on success" do
      resp = Connector.play(video.channel, video.layer, video.resource)
      expect(resp).to be "200"
    end
  end  
end
