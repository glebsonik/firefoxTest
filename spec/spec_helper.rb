require 'rspec'
require 'bundler/setup'
require 'capybara'
require 'capybara/rspec'
require 'rspec-steps'
require 'selenium-webdriver'

RSpec.configure do |config|

  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end

  Capybara.default_driver = :selenium

  config.include Capybara::DSL
end