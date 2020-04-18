require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: ENV['DEMOGORGON_TOKEN'], prefix: '/demo '

bot.command :down do |_event, number|
    "dices are down by" + number 
end

bot.command(:rand, description: 'Generates a random number 1 and max') do |_event, max|
    "dices are down by" + rand(1..max.to_i).to_s
end

bot.run