class WelcomeController < ApplicationController
	before_action :authenticate_login!
	def index
		@registers = {}
	end
	def search
		if params[:name_user]
			@registers = Register.where("name like?","%#{params[:name_user]}%")
		else
			@registers = {}
		end
	end
end