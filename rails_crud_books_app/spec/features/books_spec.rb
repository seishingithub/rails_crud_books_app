require 'spec_helper'

feature "Managing Books" do
  scenario "User creates a book" do
    visit '/'
    click_on "Add New Book"
    fill_in "Name of Book", with: "Lord of the Rings"
    fill_in "Author of Book", with: "J.R.R. Tolkien"
    fill_in "Year Book was Published", with: "1954"
    click_on "Create Book"
    expect(page).to have_content("Lord of the Rings")
    expect(page).to have_content("J.R.R. Tolkien")
    expect(page).to have_content("1954")


    click_on "Lord of the Rings"
    expect(page).to have_content("Lord of the Rings")
    expect(page).to have_content("J.R.R. Tolkien")
    expect(page).to have_content("1954")
  end
end