class AccountController < Sinatra::Base
    set :default_content_type, 'application/json'

    get "/accounts" do
        accounts = Account.all
        accounts.to_json
    end

    post "/accounts" do
        account = Account.create(id: params[:id], name: params[:name], balance: params[:balance])
        account.to_json
    end

    delete "/accounts/:id" do 
        account = Account.find(params[:id])
        account.destroy
        account.to_json
    end
end