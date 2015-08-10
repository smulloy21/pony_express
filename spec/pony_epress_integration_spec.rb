require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path of epress', {:type => :feature}) do
    it('what it does') do
        visit('/')
        fill_in('length', :with=> 6)
        fill_in('width', :with=> 6)
        fill_in('height', :with=> 6)
        fill_in('weight', :with=> 10)
        fill_in('distance', :with=> 10)
        click_button('Get Cost')
        expect(page).to have_content(4)
    end
  end
