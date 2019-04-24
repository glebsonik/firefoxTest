require_relative '../spec_helper.rb'

RSpec.describe 'firefox google registration and authorization', type: :feature do

context 'When first time accessing the sing in page' do
    it 'should have content Создайте аккаунт Google' do
      visit 'https://accounts.google.com/signup'
      expect(page).to have_content('Создайте аккаунт Google')
    end
    it 'should fill all forms and proceed' do
      Capybara.default_selector = :xpath
      find("//input[@id='lastName']").set('testName')
    end
  end
end