class User < ActiveRecord::Base
    # has_many :expenses
    # has_many :accounts, through: :expenses

    # def total_balance
    #     self.accounts.sum(:balance)
    # end

    # def list_accounts
    #     self.accounts.map do |account|
    #         account.name
    #     end
    # end
end