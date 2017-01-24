
def create_new_link
  visit('/links/new')
  fill_in( 'title', with: 'Google')
  fill_in( 'url', with: 'http://www.google.co.uk')
end
