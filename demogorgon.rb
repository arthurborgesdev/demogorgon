require "discordrb"

bot = Discordrb::Commands::CommandBot.new token: ENV["DEMOGORGON_TOKEN"], prefix: "/demo "

lastDown = 0

bot.command :down do |event, number|
    event << "dices are down by " + number
    event.channel.history(2).each { |msg| event << msg }
    return nil
end

bot.command(:rand, description: 'Generates a random number 1 and max') do |_event, max|
    "dices are down by " + rand(1...max.to_i).to_s
end

bot.run