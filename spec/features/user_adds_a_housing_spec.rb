require 'spec_helper'

feature "user adds a new Housing structure", %Q{
  As a real estate associate
  I want to record a building
  So that I can refer back to pertinent information
} do

# Acceptance Criteria:

# - I must specify a street address, city, state, and postal code
# - Only US states can be specified
# - I can optionally specify a description of the building
# - If I enter all of the required information in the required format,
#     the building is recorded.
#  -If I do not specify all of the required information in the required formats,
#     the building is not recorded and I am presented with errors
# - Upon successfully creating a building, I am redirected so that
#     I can record another building.

  scenario "specify valid info" do
    prev_count = Housing.count
    visit new_housing_path
    fill_in "Address", with: "243 Plymouth Road"
    fill_in "City", with: "Boston"
    fill_in "State", with: "MA"
    fill_in "Zip Code", with: "01776"
    fill_in  "Description", with: "Commercial"
    click_button "Record"
    expect(page).to have_content("Your building was successfully recorded")
    expect(Housing.count).to eql(prev_count + 1)
  end

end
