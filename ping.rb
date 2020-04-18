require 'discordrb'

bot = Discordrb::Bot.new token: ENV['DEMOGORGON_TOKEN']

bot.message(content: 'Ping!') do |event|
    event.respond 'Pong!'
end

bot.run