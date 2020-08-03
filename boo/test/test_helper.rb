ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  # parallelize(workers: :number_of_processors)
  parallelize(workers: 1) # fix https://github.com/rails/rails/issues/32682

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  Rails.application.configure do
    routes.default_url_options[:locale] = :en
  end
end
class ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
end