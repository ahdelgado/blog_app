require 'rails_helper'

RSpec.feature "Creating articles" do
  scenario "User creates a new article" do
    visit "/"
    click_link "New Article"
    fill_in "Title", with: "Creating first article"
    fill_in "Body",  with: "Lorem Insteadpsum"
    click_button "Create Article"
    expect(page).to have_content("Articlre has been created")
    expect(page.current_path).to eq(articles_path)
  end
end
