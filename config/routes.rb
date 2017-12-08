Rails.application.routes.draw do
  telegram_webhooks Telegram::WebhookController, "web-hook/bot"

  defaults format: :json do
    namespace :telegram do
      namespace :api do
        get 'enviar_mensagem'
      end
    end
  end

end
