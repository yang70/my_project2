require "spec_helper"

describe "My search page" do
  it "has results" do
    visit "http://google.com"
    fill_in "q", with: "test"
    click_on "Google Search"
    page.text.must_include "Test.com"
    page.text.must_include "Test - Wikipedia"
  end
end
