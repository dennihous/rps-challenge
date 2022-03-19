require 'capybara/rspec'
require '../../app'

Capybara.app = RPS

feature "server web app" do
  scenario "should serve home page" do
    visit('/')
    expect(page).to have_button('Enter name')
  end
end