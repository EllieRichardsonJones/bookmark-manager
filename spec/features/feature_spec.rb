require 'spec_helper'

feature 'index page' do
  scenario 'user can enter a name' do
    visit('/')
    fill_in "name_field", with: "Mario"
    click_button("submit")
    expect(page).to have_content "Bookmark Manager"
  end
end
