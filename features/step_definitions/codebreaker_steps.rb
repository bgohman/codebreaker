Given(/^I am not yet playing$/) do
end
When(/^I start a new game$/) do
  @message = StringIO.new
  @game = Codebreaker::Game.new(@message)
  @game.start('1234')
end
Then(/^I should see "([^"]*)"$/) do |message|
  expect(@message.string.split("\n")).to include(message)
end

Given(/^the secret code is "([^"]*)"$/) do |secret|
  @message = StringIO.new
  @game = Codebreaker::Game.new(@message)
  @game.start(secret)
end
When(/^I guess "([^"]*)"$/) do |guess|
  @game.guess(guess)
end
Then(/^the mark should be "([^"]*)"$/) do |mark|
  expect(@message.string.split("\n")).to include(mark)
end
