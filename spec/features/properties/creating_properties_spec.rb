require "rails_helper"

RSpec.feature "The user can register a new properties" do

  before(:each) do
    let(:user) { FactoryGirl.create(:user) }
    login_in_as(:user)
  end

  scenario "with valid attributes" do
    visit "/"

    click_link "New Property"

    fill_in "Title",             with: "Sublime text 3"
    fill_in "Accommodates",      with: 10
    fill_in "Bathrooms",         with: 1
    fill_in "Number of Rooms",   with: 10
    fill_in "Furnished",         with: false
    fill_in "Type property",     with: 1
    fill_in "Single room",       with: true
    fill_in "Share room",        with: false
    fill_in "Price",             with: 350.57
    fill_in "Description",       with: "sum is simply dummy text of the pvasdasdasdasd"

    expect(page).to have_content "Property has been created."
  end
end