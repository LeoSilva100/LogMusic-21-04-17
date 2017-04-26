class ProfileController < ApplicationController
  def index
  	  if Register.exists?(login_id: params[:perfil])
		@registers = Register.where("login_id like?","%#{params[:perfil]}%")
      else
      	redirect_to welcome_index_path , notice: 'Você não tem cadastro SUA PULTA!!!' 
      end
  end
end
