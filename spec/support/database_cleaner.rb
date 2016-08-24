# require 'database_cleaner'

# RSpec.configure do |config|
#   config.before(:suite) do
#     DatabaseCleaner.clean_with(:truncation)
#   end
#   config.before(:each) do
#     DatabaseCleaner.strategy = :trasanction
#   end
#   config.before(:each, :js => true) do
#     DatabaseCleaner.strategy =  :truncation
#   end
#   config.before(:each) do
#   end
#   config.after(:each) do
#     DatabaseCleaner.clean
#   end
#   config.after(:all) do
#     DatabaseCleaner.clean
#   end
#   config.before(:all) do
#     DatabaseCleaner.start
#   end
# end