require "discordrb"

bot = Discordrb::Commands::CommandBot.new token: ENV["DEMOGORGON_TOKEN"], prefix: "/demo "

downDice = 0

bot.command :down do |event, number|
    downDice = number
    "dices are down by " + downDice
end

bot.command(:rand, description: 'Generates a random number 1 and max') do |_event, max|
    downDice = rand(1..max.to_i).to_s
    "dices are down by " + downDice
end

bot.command(:dice) do |event|
    event << "dices are down by " + downDice.to_s
end

bot.message() do |event|
    embedResult = event.message.embeds
    # event << downDice
    # event << embedResult
    if embedResult.any? # change this in the future to detect roll dices of Rod bot
        rodDice = embedResult[0].description.split(" = ")[1]
        # event << rodDice
        # event << downDice
        event << "Your dice is now " + (rodDice.to_i - downDice.to_i).to_s
    end
end

bot.run