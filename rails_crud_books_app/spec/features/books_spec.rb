require 'spec_helper'

feature "Managing Books" do
  scenario "User creates and edits and deletes a book" do
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

    click_on "Edit"
    fill_in "Name of Book", with: "The Good Earth"
    fill_in "Author of Book", with: "Pearl S. Buck"
    fill_in "Year Book was Published", with: "1932"
    click_on "Update Book"

    expect(page).to have_no_content("Lord of the Rings")
    expect(page).to have_no_content("J.R.R. Tolkien")
    expect(page).to have_no_content("1954")

    expect(page).to have_content("The Good Earth")
    expect(page).to have_content("Pearl S. Buck")
    expect(page).to have_content("1932")

    click_on "Delete"
    expect(page).to have_no_content("The Good Earth")
    expect(page).to have_no_content("Pearl S. Buck")
    expect(page).to have_no_content("1932")
  end
end