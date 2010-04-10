require 'spec/spec_helper'

describe Barkeep::Martini do
  let(:mixer) { 'vermouth' }
  it_should_behave_like "a drink"
  it { should have_attribute(:garnish) }
  it { should have_attribute(:mixer) }
  it "should include mixer in ingredients" do
    expect { subject.mixer = mixer }.
    to
    change { subject.ingredients }.
    from( [] ).
    to [ mixer ]
  end
end

