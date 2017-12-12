module ReturnMessages
  extend ActiveSupport::Concern

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