Rails.application.routes.draw do
  telegram_webhooks Telegram::TelegramCotecController, "web-hook/cotec/bot", as: 'cotec_webhook'

  defaults format: :json do
    namespace :telegram do
      namespace :api do
        get 'send_message'
      end
    end
  end
end
