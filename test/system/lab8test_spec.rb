# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Lab8test' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'lab8test' do
    @driver.get('http://localhost:3000/')
    @driver.manage.resize_to(1124, 550)
    @driver.find_element(:id, 'happynum').click
    @driver.find_element(:id, 'happynum').send_keys('1234')
    @driver.find_element(:name, 'commit').click
    element = @driver.find_element(:link_text, 'Повторить для другого числа')
    @driver.action.move_to_element(element).click_and_hold.perform
    element = @driver.find_element(:link_text, 'Повторить для другого числа')
    @driver.action.move_to_element(element).perform
    element = @driver.find_element(:link_text, 'Повторить для другого числа')
    @driver.action.move_to_element(element).release.perform
    @driver.find_element(:link_text, 'Повторить для другого числа').click
    @driver.find_element(:id, 'happynum').click
    @driver.find_element(:id, 'happynum').send_keys('12340')
    @driver.find_element(:name, 'commit').click
  end
end
