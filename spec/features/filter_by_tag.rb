require 'spec_helper'

feature 'filter links by tag' do
  scenario 'find links on a particular topic' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy', tags: [Tag.first_or_create(name: 'bubbles')])
    Link.create(url: 'http://www.google.com', title: 'Google', tags: [Tag.first_or_create(name: 'bubbles')])
    Link.create(url: 'http://www.cornhub.com', title: 'Cornhub', tags: [Tag.first_or_create(name: 'bubbles')])
    Link.create(url: 'http://www.youborn.com', title: 'YouBorn', tags: [Tag.first_or_create(name: 'bubbles')])
    visit('/tags/bubbles')
    expect(page.status_code).to eq 200
    expect(page).to have_content('Makers Academy')
    expect(page).to have_content('Google')
    expect(page).to have_content('Cornhub')
    expect(page).to have_content('YouBorn')
  end
end
