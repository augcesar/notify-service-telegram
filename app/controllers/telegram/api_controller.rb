class Telegram::ApiController < ApplicationController

  def enviar_mensagem
    chat_id  = params[:chat_id]
    mensagem = params[:mensagem]

    if chat_id.present? and mensagem.present?
      EnviarMensagemJob.perform_later(chat_id, mensagem)
      return_success
    else
      return_fail 'Informe o chat e mensagem.'
    end
  end

  private
    def return_success
      render(status: :ok, json:{data:{
        status: 200, code: "ok", title:"Ok"
      }})      
    end

    def return_fail message
      render(status: :bad_request, json:{errors:[{
        status: 400, code:"bad_request", title:"Bad Request", response: message
      }]})
    end
end
