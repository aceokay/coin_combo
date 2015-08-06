require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combo user path', {:type => :feature}) do
  it("processes the user's currency amount and returns it in coins") do
    visit('/')
    fill_in('coin', :with => 0.01)
    click_button('Send')
    expect(page).to have_content("1 penny")
  end
end
