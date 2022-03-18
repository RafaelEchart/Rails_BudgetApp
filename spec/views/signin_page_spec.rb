require 'rails_helper'
require 'capybara/rspec'

describe 'Sign In', type: :feature do
  before :each do
    user = User.new(name: 'Rafael', email: 'email@test.com', password: '123456')
    user.save
  end

  it 'I can see the username and password inputs and the "Log in" button.' do
    visit 'users/sign_in'
    expect(page).to have_css("input[id$='user_email']")
    expect(page).to have_css("input[id$='user_password']")
    expect(page).to have_content('Log In')
  end

  it 'When I click the submit button without filling in the username and the password, I get a detailed error.' do
    visit 'users/sign_in'

    within('form') do
      fill_in 'user_email', with: ''
      fill_in 'user_password', with: ''
    end

    click_button 'Create User'

    expect(page).to have_content 'Invalid Email or password.'
  end

  it 'after filling in the username and the password with incorrect data.' do
    visit 'users/sign_in'
    within('form') do
      fill_in 'user_email', with: 'incorrect@incorrect'
      fill_in 'user_password', with: 'incorrect'
    end
    click_button 'Create User'

    expect(page).to have_content 'Invalid Email or password.'
  end

  it 'When I click the submit button after filling in the username and the password with correct data.' do
    visit 'users/sign_in'
    within('form') do
      fill_in 'user_email', with: 'email@test.com'
      fill_in 'user_password', with: '123456'
    end
    click_button 'Create User'
    expect(page).to have_content 'Signed in successfully.'
    expect(current_path).to eq categories_index_path
  end
end
