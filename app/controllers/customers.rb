Ubezp::App.controllers :customers do
	get :index do
		render 'customers/index'
	end
end