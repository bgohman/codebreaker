require 'spec_helper'

module Codebreaker
  describe Game do

    describe "#start" do
      let(:message) { double( 'message' ).as_null_object }
      let(:game) { Game.new(message) }

      it "sends a welcome message" do
        expect(message).to receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end
      it "prompts for the first guess" do
        expect(message).to receive(:puts).with('Enter guess:')
        game.start('1234')
      end
    end
  end
end