require "discordrb"

bot = Discordrb::Commands::CommandBot.new token: ENV["DEMOGORGON_TOKEN"], prefix: "/demo "

downDice = 0

bot.command :down do |event, number|
    downDice = number
    "dices are down by " + downDice
end

bot.command(:rand, description: 'Generates a random number 1 and max') do |_event, max|
    downDice = rand(1...max.to_i).to_s
    "dices are down by " + downDice
end

bot.command(:dice) do |event|
    "dices are down by " + downDice.to_s
end

#event.channel.history(2).each { |msg| puts msg }
    #if hist[1][0..1] == "/r" 
    #    puts hist[1] 
    #end
#    return nil
bot.run