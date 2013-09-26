require 'spec_helper'

describe Owner do
  it { should     have_valid(:first_name).when("Tom", "RENEE")}
  it { should_not have_valid(:first_name).when(nil, " ")}

  it { should     have_valid(:last_name).when("Corley", "NEWTON")}
  it { should_not have_valid(:last_name).when(nil, " ")}

  it { should     have_valid(:email).when("tom.corley@tom.com", "tom@gmail.com")}
  it { should_not have_valid(:email).when(nil, " ", "tom####gmail.com")}

  it { should     have_valid(:company).when("", "Google", nil)}
end
