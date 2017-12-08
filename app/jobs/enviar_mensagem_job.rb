class EnviarMensagemJob < ApplicationJob
  queue_as :default

  def perform(chat_id, mensagem)
    @bot = Telegram.bot
    @bot.send_message({chat_id: chat_id, text: mensagem, parse_mode: :HTML})
  end
end
