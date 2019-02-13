# frozen_string_literal: true

require 'rspec/collection_matchers'
require_relative '../../lib/number_to_word.rb'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'
  config.formatter = :documentation
  config.disable_monkey_patching!
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
