require 'spec/spec_helper'

# original
describe "Barkeep::Martini" do
  before do
    @martini = Barkeep::Martini.new
  end
  it "should have an attribute named booze" do
    @martini.should respond_to(:booze)
    @martini.should respond_to(:booze=)
  end
  it "should have an attribute named garnish" do
    @martini.should respond_to(:garnish)
    @martini.should respond_to(:garnish=)
  end
end

# matcher
describe "Barkeep::Martini" do
  include AttributeMatchers
  before do
    @martini = Barkeep::Martini.new
  end
  it "should have an attribute named booze" do
    @martini.should have_attribute(:booze)
  end
  it "should have an attribute named garnish" do
    @martini.should have_attribute(:garnish)
  end
end


# subject
describe "Barkeep::Martini" do
  include AttributeMatchers
  subject { Barkeep::Martini.new }
  it "should have an attribute named booze" do
    should have_attribute(:booze)
  end
  it "should have an attribute named garnish" do
    should have_attribute(:garnish)
  end
end

# without example messages
describe "Barkeep::Martini" do
  include AttributeMatchers
  subject { Barkeep::Martini.new }
  it { should have_attribute(:booze) }
  it { should have_attribute(:garnish) }
end


# implicit subject
describe Barkeep::Martini do
  include AttributeMatchers
  it { should have_attribute(:booze) }
  it { should have_attribute(:garnish) }
end

# if AttributeMatchers are included in Spec::Runner configuration
describe Barkeep::Martini do
  it { should have_attribute(:booze) }
  it { should have_attribute(:garnish) }
end
