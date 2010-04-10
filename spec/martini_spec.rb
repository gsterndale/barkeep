require 'spec/spec_helper'

describe Barkeep::Martini do
  it_should_behave_like "a drink"
  it { should have_attribute(:garnish) }
end
