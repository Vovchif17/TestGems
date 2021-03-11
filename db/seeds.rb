require 'database_cleaner/active_record'
Dir[Rails.root.join('spec', 'factories', '*.rb')].sort.each { |f| require f }

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

FactoryBot.create_list(:user, 10, :with_micropost)
