require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Barkeep::Martini do
  it_should_behave_like "a drink"
  it { should have_attribute(:garnish) }
  it { should have_attribute(:mixer) }
end

describe Barkeep::Martini, "with a mixer" do
  let(:mixer) { 'vermouth' }
  subject { Barkeep::Martini.new(:mixer => mixer) }
  its(:ingredients) { should include mixer }
  its(:ingredients) { should have(1).items }
end

