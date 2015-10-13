module Codebreaker
  class Game
    def initialize(message)
      @message = message
    end
    def start
      @message.puts "Welcome to Codebreaker!"
      @message.puts "Enter guess:"
    end
  end
end