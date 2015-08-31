require "spec_helper"

describe "Rails app welcome page" do
  it "shows my custom welcome message" do
    visit "http://localhost:3000"
    page.text.must_include "Welcome aboard"
  end
end
