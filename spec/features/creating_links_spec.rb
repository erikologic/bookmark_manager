require 'spec_helper'

feature ' add links' do
  scenario 'submitting forms to create new links' do
    create_new_link
    click_button('submit')
    expect(page).to have_content('Title: Google  URL: http://www.google.co.uk' )
  end
end

# # Alternative randomised version from Enrico
# feature "Adding links" do
#   scenario "add the site's address and title to my bookmark manager" do
#     visit ('/links/new')
#     url = rand(1000)
#     title = rand(1000)
#     fill_in 'url', with: url
#     fill_in 'title', with: title
#     click_button 'Create Link'
#
#     within 'ul#links' do
#       expect(page).to have_content(url)
#       expect(page).to have_content(title)
#     end
#   end
# end
