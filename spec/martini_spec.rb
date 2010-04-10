require 'spec/spec_helper'

describe Barkeep::Martini do
  it { should have_attribute(:booze) }
  it { should have_attribute(:garnish) }
end
