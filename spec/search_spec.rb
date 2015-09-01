require "spec_helper" # Ruby method

describe "My search page" do # Minitest/spec - method takes name and bloc
  it "has results" do # Minitest/spec - method takes name and bloc
    visit "http://google.com" # Capybara
    fill_in "q", with: "test" # Capybara
    click_on "Google Search" # Capybara
    page.text.must_include "Test.com"
    # Capybara page.text string - .must_include from Minitest/spec
    page.text.must_include "Test - Wikipedia" # See above
  end
end
