Ubezp::App.controllers :authorization do
	layout :not_signed
	
	get :index do
		render 'authorization/login'
	end
end