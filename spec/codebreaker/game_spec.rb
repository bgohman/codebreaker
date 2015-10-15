require 'spec_helper'

module Codebreaker
  describe Game do
    let(:message) { double( 'message' ).as_null_object }
    let(:game) { Game.new(message) }

    describe "#start" do
      it "sends a welcome message" do
        expect(message).to receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end
      it "prompts for the first guess" do
        expect(message).to receive(:puts).with('Enter guess:')
        game.start('1234')
      end
    end

    describe "#guess" do
      it "sends a mark to output" do
        game.start('1234')
        expect(message).to receive(:puts).with('++++')
        game.guess('1234')
      end


    end

  end
end