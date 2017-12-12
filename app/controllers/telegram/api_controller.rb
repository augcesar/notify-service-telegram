class Telegram::ApiController < ApplicationController

  include ReturnMessages
  before_action :bot_authentication

  def send_message
    chat_id  = params[:chat_id]
    mensagem = params[:mensagem]

    if chat_id.present? and mensagem.present?
      
      @bot.send_message({chat_id: chat_id, text: mensagem, parse_mode: :HTML})
      return_success
    else
      return_fail 'Informe o chat e mensagem.'
    end
  end

  private

    def bot_authentication
      token_api = params[:token_api]
      key_bot   = ''

      begin
        tokens  = Rails.cache.fetch("TOKENS/API/#{Rails.env}", expires_in: 10.seconds) { YAML.load_file(Rails.root.join('config/secrets.yml'))[Rails.env]['telegram']['bots'] }
        key_bot = tokens.select{|_,y| y["token_api"] == token_api }.keys.last.to_sym
        
        if key_bot.present?
          @bot = Telegram.bots[key_bot]
        else
          raise Exception 
        end
      rescue Exception => e
        return_fail 'Token não encontrado'
      end
    end
end
