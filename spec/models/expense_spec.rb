require 'rails_helper'
# require 'database_cleaner'
# DatabaseCleaner.strategy = :truncation
DatabaseCleaner.start

describe Expense do
  let(:expense) {FactoryGirl.create(:expense)}
  subject { expense }

  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:value) }
  it { should belong_to(:user) }
  describe "when user is not present" do
    before { expense.user_id = nil }
    it { should_not be_valid }
  end
end