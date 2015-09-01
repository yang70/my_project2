require "spec_helper"

describe "My index.html page" do
  it "has a welcome headline" do
    visit "/Users/yang70/Dropbox/da_assignments/my_project2/index.html"
    page.text.must_include "Welcome to my page"
  end
end
