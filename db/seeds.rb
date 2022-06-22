puts "🌱 Seeding spices..."

puts "Deleting data..."
User.destroy_all
Account.destroy_all
Expense.destroy_all

# Seed your database here
tim = User.create(username: "tim", password: "12345")
suzie = User.create(username: "suzie", password: "12345")
jon = User.create(username: "jon", password: "12345")


timDebit = Account.create(name: "Tims Debit", balance: 200.50)
timChecking = Account.create(name: "Tims Checking", balance: 100.50)

suzieChecking = Account.create(name: "suzies Checking", balance: 80.75)
suzieSavings = Account.create(name: "suzies Savings", balance: 19.25)

jonDebit = Account.create(name: "Jons Debit", balance: 50.50)
jonSavings = Account.create(name: "Jons IRA", balance: 500.50)


Expense.create(
    price: 18, 
    description: "movie tix", 
    user_id: tim.id, 
    account_id: timDebit.id
)

Expense.create(
    price: 1000, 
    description: "rent", 
    user_id: tim.id, 
    account_id: timChecking.id
)

Expense.create(
    price: 50, 
    description: "lunch", 
    user_id: suzie.id, 
    account_id: suzieChecking.id
)

Expense.create(
    price: 200, 
    description: "car insurance", 
    user_id: suzie.id, 
    account_id: suzieSavings.id
)

Expense.create(
    price: 80, 
    description: "Mavs tickets", 
    user_id: jon.id, 
    account_id: jonDebit.id
)

Expense.create(
    price: 300, 
    description: "airfare", 
    user_id: jon.id, 
    account_id: jonSavings.id
)

puts "✅ Done seeding!"
