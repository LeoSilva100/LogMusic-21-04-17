class MailBoxController < ApplicationController
	def index
		if Inbox.exists?(register_id: params[:sender])
			@inbox_Received = Inbox.where(register_id: params[:sender])
		else
			@inbox_Received = {}
			#redirect_to welcome_index_path, notice: 'Você não pussui menssagem na sua box'
		end
		@register = Register.all

		if Inbox.exists?(login_id: params[:sender])
			@inbox_Send = Inbox.where(login_id: params[:sender])
		else
			@inbox_Send = {}
		end
	end
end
