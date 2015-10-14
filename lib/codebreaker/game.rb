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
      marker = Marker.new(@secret, guess)
      result = '+'*marker.exact_match_count + '-'*marker.number_match_count
      result = "0" if result == ""
      @message.puts result
    end

    class Marker
      def initialize(secret, guess)
        @secret = secret
        @guess = guess
      end

      def exact_match?(index)
        @guess[index] == @secret[index]
      end

      def number_match?(index)
        @secret.include?(@guess[index]) && !exact_match?(index)
      end

      def exact_match_count
        exact_match_count = 0
        4.times.inject(0) do |count, index|
          count + (exact_match?(index) ? 1 : 0)
        end
      end

      def number_match_count
        number_match_count = 0
        4.times.inject(0) do |count, index|
          count + (number_match?(index) ? 1 : 0)
        end
      end

    end

  end
end