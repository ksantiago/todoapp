require 'spec_helper'

describe "Creating todo lists" do
  it "redirects to the doit list index page on success" do
    visit "/doit_lists"
    click_link "New Doit list"
    expect(page).to have_content("New doit_list")

    fill_in "Title", with: "My doit list"
    fill_in "Description", with: "This is what I'm doing today."
    click_button "Create Doit list"

    expect(page).to have_content("My doit list")
  end

  it "displays an error when the doit list has no title" do
    expect(DoitList.count).to eq(0)

    visit "/doit_lists"
    click_link "New Doit list"
    expect(page).to have_content("New doit_list")

    fill_in "Title", with: ""
    fill_in "Description", with: "This is what I'm doing today."
    click_button "Create Doit list"

    expect(page).to have_content("error")
    expect(DoitList.count).to eq(0)

    visit "/doit_lists"
    expect(page).to_not have_content("This is what I'm doing today.")
  end

  it "displays an error when the doit list has a title less than 3 characters" do
    expect(DoitList.count).to eq(0)

    visit "/doit_lists"
    click_link "New Doit list"
    expect(page).to have_content("New doit_list")

    fill_in "Title", with: "Hi"
    fill_in "Description", with: "This is what I'm doing today."
    click_button "Create Doit list"

    expect(page).to have_content("error")
    expect(DoitList.count).to eq(0)

    visit "/doit_lists"
    expect(page).to_not have_content("This is what I'm doing today.")
  end

  it "displays an error when the doit list has no description" do
    expect(DoitList.count).to eq(0)

    visit "/doit_lists"
    click_link "New Doit list"
    expect(page).to have_content("New doit_list")

    fill_in "Title", with: "Grocery List"
    fill_in "Description", with: ""
    click_button "Create Doit list"

    expect(page).to have_content("error")
    expect(DoitList.count).to eq(0)

    visit "/doit_lists"
    expect(page).to_not have_content("This is what I'm doing today.")
  end

  it "displays an error when the doit list has a title less than 5 characters" do
    expect(DoitList.count).to eq(0)

    visit "/doit_lists"
    click_link "New Doit list"
    expect(page).to have_content("New doit_list")

    fill_in "Title", with: "Grocery List"
    fill_in "Description", with: "Food"
    click_button "Create Doit list"

    expect(page).to have_content("error")
    expect(DoitList.count).to eq(0)

    visit "/doit_lists"
    expect(page).to_not have_content("This is what I'm doing today.")
  end
end