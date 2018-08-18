require 'telegram/bot'
require 'message_parser'
token = '657840887:AAH9dgoBFgFJJz1ryhwJDdjC3gheKBCtyj8'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    end
    MessageParser.new(message.text)
  end
end
