require 'java'
require 'dotenv/load'
require 'twitter'
require_relative 'lib/map_message_to_key'

java_import 'java.awt.Robot'

robot = Robot.new

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key = ENV['CONSUMER_KEY']
  config.consumer_secret = ENV['CONSUMER_SECRET']
  config.access_token = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_SECRET']
end

client.filter(track: ENV['HASHTAG']) do |object|
  if object.is_a?(Twitter::Tweet)
    puts object.text
    code = map_message_to_key(object.text.downcase)
    robot.keyPress(code)
    robot.delay(100)
    robot.keyRelease(code)
  end
end
