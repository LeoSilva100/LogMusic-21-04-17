class LookController < ApplicationController
  def index
  	@id = params[:id_message]
  	#@register = Register.find_by_login_id(params[:recipient].to_i)# query no banco retronando o id da usuario que recebeu a mensagem
  	#@id = @register.id #guarda a id do usuario
  	@inbox = Inbox.find_by_id(@id) # retorna a mensagem para setar o campo e visualização
  	@inbox.visualization = true # insere a visualização
  	@inbox.save #salva a visualização
  	end
end
