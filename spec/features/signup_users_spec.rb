require 'spec_helper'

feature 'sign up users' do
  scenario 'creating new user' do
    expect { signup }.to change(User, :count).by(1)
    expect(page).to have_current_path('/links')
    expect(page).to have_content("Welcome, test@example.com!")
  end

  scenario 'with password confirmation' do
    user_count = User.count
    visit('/signup')
    fill_in 'email', with: 'test@example.com'
    fill_in 'password', with: 'secret'
    fill_in 'password_confirmation', with: 'secret'
    click_button 'Sign up'
    expect(User.count).to eq(user_count + 1)
  end
end
