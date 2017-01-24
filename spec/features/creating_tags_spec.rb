require 'spec_helper'

feature 'adding tags to links' do
  scenario 'adding a single tag' do
    visit('/links/new')
    fill_in( 'title', with: 'Google')
    fill_in( 'url', with: 'http://www.google.co.uk')
    fill_in( 'tag', with: 'search_engine')
    click_button('submit')
    link = Link.first
    expect(link.tags.map(&:name)).to include('search_engine')
  end
end
