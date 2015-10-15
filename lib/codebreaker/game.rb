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



  end
end