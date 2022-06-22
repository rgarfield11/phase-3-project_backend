puts "🌱 Seeding spices..."

puts "Deleting data..."
# User.destroy_all
Account.destroy_all
Expense.destroy_all

# Seed your database here
# tim = User.create(username: "tim", password: "12345")
# suzie = User.create(username: "suzie", password: "12345")
# jon = User.create(username: "jon", password: "12345")


debit = Account.create(
    name: "Debit", 
    balance: 200.50, 
)

checking = Account.create(
    name: "Checking", 
    balance: 100.50, 
)

Expense.create(
    price: 18, 
    description: "movie tix", 
    account_id: debit.id
)

Expense.create(
    price: 1000, 
    description: "rent", 
    account_id: checking.id
)

puts "✅ Done seeding!"
