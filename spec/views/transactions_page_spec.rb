require 'rails_helper'
require 'capybara/rspec'

describe 'User category page', type: :feature do
  before :each do
    login_user
  end

  it 'I can see the total category banner for user' do
    visit "/categories/#{@category.id}/transactions"
    expect(page).to have_content('Total')
  end

  it 'The category page should have button to create new transaction' do
    visit "/categories/#{@category.id}/transactions"
    expect(page).to have_content('New transaction')
  end

  it 'I can see the transaction header title' do
    visit "/categories/#{@category.id}/transactions"
    expect(page).to have_content('TRANSACTIONS')
  end

  it 'I can see the username and password inputs and the "Log in" button.' do
    visit "/categories/#{@category.id}/transactions/new"
    expect(page).to have_css("input[id$='entity_name']")
    expect(page).to have_css("input[id$='entity_amount']")
    expect(page).to have_content('Add')
  end
end
