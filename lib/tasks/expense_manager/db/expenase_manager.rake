namespace :expense_manager do
  namespace :db do
    task populate_categories: :environment do
      Category.destroy_all
      @category1 = Category.create({name: "Car", outcome: true})
      @category2 = Category.create({name: "Food & Drink", outcome: true})
      @category3 = Category.create({name: "Family", outcome: true})
      @category4 = Category.create({name: "Bills", outcome: true})
      @category5 = Category.create({name: "Rent", outcome: true})
      @category6 = Category.create({name: "Health", outcome: true})
      @category7 = Category.create({name: "Education", outcome: true})
      @category8 = Category.create({name: "Sport", outcome: true})
      @category9 = Category.create({name: "Clothing", outcome: true})
      @category10 = Category.create({name: "Salary", outcome: false})
      @category11 = Category.create({name: "Extra Income", outcome: false})
      @category12 = Category.create({name: "Business", outcome: false})
    end

    task populate_cities: :environment do
      City.destroy_all
      @city1 = City.create({name: "Rožaje"})
      @city2 = City.create({name: "Novi Pazar"})
      @city3 = City.create({name: "Tutin"})
      @city4 = City.create({name: "Sjenica"})
      @city5 = City.create({name: "Prijepolje"})
      @city6 = City.create({name: "Priboj"})
      @city7 = City.create({name: "Bijelo Polje"})
      @city8 = City.create({name: "Berane"})
      @city9 = City.create({name: "Plav"})
      @city10 = City.create({name: "Gusinje"})
      @city11 = City.create({name: "Pljevlja"})
      @city12 = City.create({name: "Nova Varos"})
      @city13 = City.create({name: "Petnjica"})
      @city14 = City.create({name: "Andrijevica"})
    end

    task populate_users: :environment do
      User.destroy_all
      @user1 = User.create({email: "a@live.com", password: "12345678", password_confirmation: "12345678"})
      @user2 = User.create({email: "b@live.com", password: "12345678", password_confirmation: "12345678"})
      @user3 = User.create({email: "c@live.com", password: "12345678", password_confirmation: "12345678"})
      @user4 = User.create({email: "d@live.com", password: "12345678", password_confirmation: "12345678"})
      @user5 = User.create({email: "e@live.com", password: "12345678", password_confirmation: "12345678"})
      @user6 = User.create({email: "f@live.com", password: "12345678", password_confirmation: "12345678"})
    end

    task populate_expenses: :environment do
      Expense.destroy_all
      @expense1 = Expense.create({value: 32.4, category: @category3, city: @city1, user: @user1})
      @expense2 = Expense.create({value: 32, category: @category5, city: @city2, user: @user2})
      @expense3 = Expense.create({value: 76, category: @category2, city: @city3, user: @user1})
      @expense4 = Expense.create({value: 54, category: @category1, city: @city5, user: @user2})
      @expense5 = Expense.create({value: 85.4, category: @category6, city: @city1, user: @user4})
      @expense6 = Expense.create({value: 54.3, category: @category8, city: @city7, user: @user6})
      @expense7 = Expense.create({value: 34, category: @category10, city: @city5, user: @user3})
      @expense8 = Expense.create({value: 74.55, category: @category11, city: @city3, user: @user2})
      @expense9 = Expense.create({value: 23.5, category: @category4, city: @city11, user: @user5})
    end
  end

  namespace :db do
    task :populate => [
                        :populate_categories,
                        :populate_cities,
                        :populate_users,
                        :populate_expenses
                      ]
  end
end