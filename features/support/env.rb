require "capybara"
require "capybara/cucumber"
require "rspec"
require "selenium-webdriver"
require "allure-cucumber"

require_relative "helpers.rb"

World(Helpers)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 10
    config.app_host = "http://automationpractice.com"
end
Capybara.page.driver.browser.manage.window.maximize

AllureCucumber.configure do |config|
    config.results_directory = "/logs"
    config.clean_results_directory = true
end