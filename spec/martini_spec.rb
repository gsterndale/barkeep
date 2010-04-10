require 'spec/spec_helper'

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

