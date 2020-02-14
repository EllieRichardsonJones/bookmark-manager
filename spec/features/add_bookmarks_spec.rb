require 'spec_helper'

feature 'adding bookmarks' do
  scenario 'user adds a bookmark' do
    visit ('/bookmarks/new')
    fill_in 'url', with: 'https://www.shoes.com'
    click_button ('Add bookmark')

    expect(page).to have_content('https://www.shoes.com')
  end
end

feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.testbookmark.com')
    # fill_in('title', with: 'Test Bookmark')
    click_button('Add bookmark')

    expect(page).to have_content('http://www.testbookmark.com')
  end
end
