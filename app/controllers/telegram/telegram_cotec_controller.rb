class Telegram::TelegramCotecController < Telegram::Bot::UpdatesController
  include Telegram::Bot::UpdatesController::TypedUpdate
  include Telegram::Bot::UpdatesController::Session
  
  use_session!

  def message(message)
    message == self.payload
  end

  def chat_id
    respond_with :message, text: chat.id
  end

  def start(data = nil, *)
    response = from ? "Olá #{from['username']}!" : 'Olá!'
    respond_with :message, text: response
  end

end