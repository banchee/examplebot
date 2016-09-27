require 'slack-ruby-bot'

class PingPongBot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.say(text: 'pong', channel: data.channel)
  end

  command 'pong' do |client, data, match|
    client.say(text: 'ping', channel: data.channel)
  end
end

PingPongBot.run
