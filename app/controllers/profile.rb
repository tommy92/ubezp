Ubezp::App.controllers :profile do
	get :show do
		@account = Account.find(current_account.id)

		if @account
			render 'profile/show'
		else
			flash[:warning] = "Nie można odnaleźć profilu o podanym ID. Spróbuj raz jeszcze."
		end
	end

	post :update do
	end
end