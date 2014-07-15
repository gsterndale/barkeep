require 'spec_helper'

describe Barkeep::Whiskey do
  it_behaves_like "a drink"
end

describe Barkeep::Whiskey, ".neat" do
  subject { Barkeep::Whiskey.neat }
  it_behaves_like "a drink", "whiskey"
end
