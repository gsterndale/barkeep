Dir["#{File.dirname(__FILE__)}/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.include AttributeMatchers
end
