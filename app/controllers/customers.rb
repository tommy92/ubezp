Ubezp::App.controllers :customers do
	layout :application

	get :index do
		@customers = Customer.all
		render 'customers/index'
	end

	get :edit, :with => :id do
		@customer = Customer.find(params[:id])
		render 'customers/edit'
	end

	post :update, :with => :id do
		@customer = Customer.find(params[:id])

		if @customer.update_attributes(params[:customer])
			@customer.save
		else
			flash.now[:danger] = "Dane zostały niekompletnie wypełnione."
		end

		render 'customers/edit'
	end

	get :new do
		@customer = Customer.new
		render 'customers/edit'
	end
end