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
      context "with no matches" do
        it "sends a mark with '0' " do
          game.start('1234')
          expect(message).to receive(:puts).with('0')
          game.guess('5555')
        end
      end
      context "with 1 number match" do
        it "sends a mark with '-' " do
          game.start('1234')
          expect(message).to receive(:puts).with('-')
          game.guess('2555')
        end
      end
      context "with 1 exact (number and place) match" do
        it "sends a mark with '+' " do
          game.start('1234')
          expect(message).to receive(:puts).with('+')
          game.guess('1555')
        end
      end
      context "with 2 number matches" do
        it "sends a mark with '--' " do
          game.start('1234')
          expect(message).to receive(:puts).with('--')
          game.guess('2355')
        end
      end
      context "with 1 number match and 1 exact match (in that order)" do
        it "sends a mark with '+-' " do
          game.start('1234')
          expect(message).to receive(:puts).with('+-')
          game.guess('2535')
        end
      end
    end

  end
end