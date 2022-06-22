class Account < ActiveRecord::Base
    has_many :expenses
    belongs_to :user

    def total_balance
        self.accounts.sum(:balance)
    end
end