require 'spec_helper'

feature ' add links' do
  scenario 'submitting forms to crete new links' do
    visit('/links/new')
    fill_in( 'title', with: 'Google')
    fill_in( 'url', with: 'http://www.google.co.uk')
    click_button('submit')
    expect(page).to have_content('Title: Google  URL: http://www.google.co.uk' )
  end
end
