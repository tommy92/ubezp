Ubezp::App.controllers :authorization do
	layout :not_signed
	
	get :index do
		render 'authorization/login'
	end

  post :create do
    if account = Account.authenticate(params[:email], params[:password])
      set_current_account(account)
      redirect url(:customers, :index)
    elsif Padrino.env == :development && params[:bypass]
      account = Account.first
      set_current_account(account)
      redirect url(:customers, :index)
    else
      params[:email], params[:password] = h(params[:email]), h(params[:password])
      flash[:error] = pat('login.error')
      redirect url(:authorization, :index)
    end
  end

  get :destroy do
    set_current_account(nil)
    redirect url(:authorization, :index)
  end
end