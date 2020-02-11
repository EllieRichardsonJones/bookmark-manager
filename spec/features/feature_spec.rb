require 'spec_helper'

feature 'index page' do
  scenario 'user can enter a name' do
    visit('/')
    fill_in "name_field", with: "Mario"
    click_button("submit")
    expect(page).to have_content "Bookmark Manager"
  end
end

feature 'bookmark page' do
  scenario 'user can access bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("Your bookmarks")
  end
  scenario 'user can see their bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
    