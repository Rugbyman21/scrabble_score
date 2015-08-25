require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)

describe('the scrabble scoring path', {:type => :feature}) do
  it('accepts a word and returns the scrabble score') do
    visit('/')
    fill_in('scrabble_word', :with => 'zimbabwe')
    click_button('scrabble_button')
    expect(page).to have_content('26')
  end
end
