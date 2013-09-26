require 'spec_helper'

describe Housing do
  it { should     have_valid(:address).when("50 Lothrop Street", "40 Bradford Road")}
  it { should_not have_valid(:address).when(nil, " ")}

  it { should     have_valid(:city).when("Boston", "New York")}
  it { should_not have_valid(:city).when(nil, " ")}

  it { should     have_valid(:state).when("MA", "NY")}
  it { should_not have_valid(:state).when(nil, " ", "LK")}

  it { should     have_valid(:zip_code).when("01234", "56789")}
  it { should_not have_valid(:zip_code).when(nil, " ")}

  it { should     have_valid(:owner).when(Owner.new) }
  it { should belong_to :owner}

end
