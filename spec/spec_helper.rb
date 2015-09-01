require "minitest/autorun"
require "minitest/spec"

class FeatureSpec < MiniTest::Spec
  require "capybara/poltergeist"
  include Capybara::DSL
  Capybara.register_driver :poltergeist do |config|
    Capybara::Poltergeist::Driver.new(config, {js_errors: false})
  end
  Capybara.default_driver = :poltergeist
  register_spec_type(/page$/, self)
end
