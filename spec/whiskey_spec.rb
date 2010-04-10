require 'spec/spec_helper'

describe Barkeep::Whiskey do
  it { should have_attribute(:booze) }
  it { should have_attribute(:glass) }
end
