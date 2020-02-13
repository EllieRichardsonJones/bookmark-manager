require 'spec_helper'

feature 'adding bookmarks' do
  scenario 'user adds a bookmark' do
    visit ('/bookmarks')
    click_button ('Add bookmark')
    fill_in 'url_field', with: 'https://www.shoes.com'
    click_button ('Submit')
    expect(page).to have_content ('Bookmark added!')
    click_button ('Back to bookmarks')
    expect(page).to have_content('https://www.shoes.com')
  end
end
