require 'spec_helper'

feature ' add links' do
  scenario 'submitting forms to crete new links' do
    create_new_link
    click_button('submit')
    expect(page).to have_content('Title: Google  URL: http://www.google.co.uk' )
  end
end
