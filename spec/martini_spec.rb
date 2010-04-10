require 'spec/spec_helper'

describe Barkeep::Martini do
  it_should_behave_like "a drink"
  it { should have_attribute(:garnish) }
  it { should have_attribute(:mixer) }
  context "with a mixer" do
    before do
      @mixer        = 'vermouth'
      subject.mixer = @mixer
    end
    it "should include mixer in ingredients" do
      subject.ingredients.should include @mixer
    end
  end
end
