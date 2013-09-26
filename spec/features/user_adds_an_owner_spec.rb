require 'spec_helper'

feature "user adds owner", %Q{
  As a real estate associate
  I want to record a building owner
  So that I can keep track of our relationships with owners
} do

  # Acceptance Criteria:

# - I must specify a first name, last name, and email address
# - I can optionally specify a company name
# - If I do not specify the required information, I am presented with errors
# - If I specify the required information, the owner is recorded
#   and I am redirected to enter another new owner
  scenario "owner with valid info" do
    prev_count = Owner.count
    visit new_owner_path
    fill_in "First Name", with: "Tom"
    fill_in "Last Name", with: "Corley"
    fill_in "Email", with: "tom@gmail.com"
    fill_in "Company", with: ""
    click_button "Record"
    expect(page).to have_content("The Owner was successfully recorded")
    expect(Owner.count).to eql(prev_count + 1)
  end

  scenario "owner with invalid info" do
    prev_count = Owner.count
    visit new_owner_path
    fill_in "Email", with: "tom$gmail.com"
    click_button "Record"
    expect(page).to have_content("can't be blank")
    expect(page).to have_content("Email is invalid")
    expect(Owner.count).to eql(prev_count)
  end

end
