require_relative '../spec_helper.rb'

RSpec.describe 'firefox google registration and authorization', type: :feature do

  before(:each) do
    visit "https://accounts.google.com/signup"
  end

  context "When first time accessing the sing in page" do

    it "should have content Создайте аккаунт Google" do
      expect(page).to have_content("Создайте аккаунт Google")
    end

    it "should fill all blanks on the page and go further" do
      find("//input[@id='lastName']").set("testLastName")
      find("//input[@id='firstName']").set("testFirstName")
      find("//input[@id='username']").set("testUser322228")
      test_password = "123456G34"
      find("//div[@id='passwd']//input").set(test_password)
      find("//div[@id='confirm-passwd']//input").set(test_password)
      find("//*[@id='accountDetailsNext']").click()
    end
  end
end