class Telegram::WebhookController < Telegram::Bot::UpdatesController
  include Telegram::Bot::UpdatesController::TypedUpdate

  # Every update can have one of: message, inline_query, chosen_inline_result,
  # callback_query, etc.
  # Define method with same name to respond to this updates.
  def message(message)
    message == self.payload
  end

  def chat_id
    respond_with :message, text: chat.id
  end

  # This basic methods receives commonly used params:
  #
  #   message(payload)
  #   inline_query(query, offset)
  #   chosen_inline_result(result_id, query)
  #   callback_query(data)

  # Define public methods to respond to commands.
  # Command arguments will be parsed and passed to the method.
  # Be sure to use splat args and default values to not get errors when
  # someone passed more or less arguments in the message.
  #
  # For some commands like /message or /123 method names should start with
  # `on_` to avoid conflicts.
  def start(data = nil, *)
    response = from ? "Olá #{from['username']}!" : 'Olá!'
    respond_with :message, text: response
  end

end