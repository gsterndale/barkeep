require 'spec_helper'

describe Barkeep::Martini do
  it_behaves_like "a drink"
  it { is_expected.to have_attribute(:garnish) }
  it { is_expected.to have_attribute(:mixer) }
end

describe Barkeep::Martini, "with a mixer" do
  let(:mixer) { 'vermouth' }
  subject(:martini) { Barkeep::Martini.new(:mixer => mixer) }

  describe '#ingredients' do
    subject { martini.ingredients }
    it { is_expected.to include mixer }
  end

  describe '#ingredients' do
    subject { martini.ingredients }

    it 'has 1 item' do
      expect(subject.size).to eq(1)
    end
  end
end

describe Barkeep::Martini, ".dirty" do
  subject { Barkeep::Martini.dirty }
  it_behaves_like "a drink", "vodka", "vermouth"
end
