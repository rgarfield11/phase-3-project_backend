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

    get "/expenses" do
        expenses = Expense.all
        expenses.to_json
    end

    post "/expenses" do
        expense = Expense.create(id: params[:id], price: params[:price], description: params[:description], account_id: params[:account_id])
        expense.to_json
    end

    patch '/accounts/:id' do
        balance = Account.find(params[:id])
        balance.update(
          balance: params[:balance]
        )
        balance.to_json
      end

end