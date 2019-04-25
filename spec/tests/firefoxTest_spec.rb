require_relative '../spec_helper.rb'

RSpec.describe 'firefox google registration and authorization', type: :feature do

context 'When first time accessing the sing in page' do
    it 'should have content Создайте аккаунт Google' do
      visit 'https://accounts.google.com/signup'
      expect(page).to have_content('Создайте аккаунт Google')

      find("//input[@id='lastName']").set('testName')
    end
  end
end