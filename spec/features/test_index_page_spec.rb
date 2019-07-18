# frozen_string_literal: true

feature 'View the home page' do
  scenario 'index page' do
    visit('/')
    expect(page).to have_content 'Bookmarks'
  end
end
