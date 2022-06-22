class User < ActiveRecord::Base
    has_many :expenses
    has_many :accounts, through: :expenses
end