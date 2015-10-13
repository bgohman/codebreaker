module Codebreaker
  class Game
    def initialize(message)
      @message = message
    end

    def start(secret)
      @message.puts "Welcome to Codebreaker!"
      @message.puts "Enter guess:"
    end

    def guess(guess)

    end
  end
end