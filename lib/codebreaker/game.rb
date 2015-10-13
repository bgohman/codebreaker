module Codebreaker
  class Game
    def initialize(message)
      @message = message
    end

    def start(secret)
      @secret = secret
      @message.puts "Welcome to Codebreaker!"
      @message.puts "Enter guess:"
    end

    def guess(guess)
      mark = ""
      4.times do |index|
        mark << "+" if exact_match?(guess, index)
      end
      4.times do |index|
        mark << "-" if number_match?(guess, index)
      end
      mark = "0" if mark == ""
      @message.puts mark
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end
    def number_match?(guess, index)
      @secret.include?(guess[index]) && !exact_match?(guess, index)
    end
  end
end