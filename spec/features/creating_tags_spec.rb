require 'spec_helper'

feature 'adding tags to links' do
  scenario 'adding a single tag' do
    signup
    visit('/links/new')
    fill_in( 'title', with: 'Google')
    fill_in( 'url', with: 'http://www.google.co.uk')
    fill_in( 'tag', with: 'search_engine')
    click_button('submit')
    link = Link.first
    expect(link.tags.map(&:name)).to include('search_engine')
  end

  scenario 'adding multiple tags' do
    signup
    visit('/links/new')
    fill_in( 'title', with: 'Google')
    fill_in( 'url', with: 'http://www.google.co.uk')
    fill_in( 'tag', with: 'search_engine fantastic')
    click_button('submit')
    link = Link.first
    expect(link.tags.map(&:name)).to include('search_engine', 'fantastic')
  end
end
