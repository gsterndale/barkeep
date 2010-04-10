Dir["#{File.dirname(__FILE__)}/**/*.rb"].each {|f| require f}
Spec::Runner.configure do |config|
  config.include AttributeMatchers
end

