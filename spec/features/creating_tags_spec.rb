feature 'adding tags to links' do
  scenario 'adding a single tag' do
    create_new_link
    fill_in( 'tag', with: 'search_engine')
    expect(page).to have_content('Title: Google  URL: http://www.google.co.uk  Tag: search_engine' )
  end
end
