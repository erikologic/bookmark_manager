
def create_new_link
  visit('/links/new')
  fill_in( 'title', with: 'Google')
  fill_in( 'url', with: 'http://www.google.co.uk')
end

def signup
  visit('/signup')
  fill_in 'email', with: 'test@example.com'
  fill_in 'password', with: 'secret'
  fill_in 'password_confirmation', with: 'secret'
  click_button 'Sign up'
end
