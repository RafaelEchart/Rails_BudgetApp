require 'rails_helper'
require 'capybara/rspec'

describe 'User category page', type: :feature do
  before :each do
    login_user
  end

  it 'I can see the name of the category of User' do
    visit '/categories'
    expect(page).to have_content('Total categories')
  end
  
  it 'The category page should have div anchor tags to take you to the transaction page of that category' do
    visit '/categories'
    expect(page).to have_css('div')
  end

  it 'I can see the button to open menu' do
    visit "/categories/#{@category.id}/transactions"
    expect(page).to have_content('Total')
  end

end
