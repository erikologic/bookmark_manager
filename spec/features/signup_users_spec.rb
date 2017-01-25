require 'spec_helper'

feature 'sign up users' do
  scenario 'new user' do
    user_count = User.count

    visit('/signup')
    email = 'test@example.com'
    fill_in 'email', with: email
    fill_in 'password', with: 'secret'
    click_button 'Sign up'

    expect(page).to have_current_path('/links')
    expect(page).to have_content("Welcome, #{email}!")
    expect(User.count).to eq(user_count + 1)
  end
end
