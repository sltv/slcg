require "spec_helper"
require_relative "../lib/connector"

RSpec.describe Connector do
  let(:video) { FactoryGirl.build(:video) }
  let(:valid_command) { "PLAY 1-10 AMB\r\n" }

  describe "#connect" do
    context "with valid command" do
      it "responds with 200 success" do
        Connector::new::connect(@valid_command)
      end
    end
  end

end
