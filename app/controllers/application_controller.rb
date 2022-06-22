class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
 
 # USER CONTROLS

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/:id" do 
    user = User.find_by(id: params[:id])
    user.to_json
  end
  
  post "/users" do 
    user = User.create(username: params[:username], password: params[:password])
    user.to_json
  end

  delete "/users/:id" do 
    user = User.find_by(id: params[:id])
    user.destroy
    user.to_json
  end

  get "/users/:id" do
    user = User.find_by(id: params[:id])
    user.list_accounts
    user.to_json
  end

  #ACCOUNT CONTROLS

  get "/accounts" do
    accounts = Account.all
    accounts.to_json
  end

  post "/accounts" do
    account = Account.create(name: params[:name], balance: params[:balance], user_id: params[:user_id])
    account.to_json
  end
end
