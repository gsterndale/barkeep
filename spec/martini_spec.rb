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

describe Barkeep::Martini, ".dirty" do
  let(:martini)         { Barkeep::Martini.dirty }
  subject(:ingredients) { martini.ingredients }

  it { is_expected.to contain_exactly 'vodka', 'olive juice' }

  it { is_expected.to include 'olive juice', 'vodka' }

  it { is_expected.to all be_a(String) & start_with(/^\w/) }

  it { is_expected.to match [ start_with(/^\w/), match(/olives?|twist/) ]}

  it "names two ingredients, the second olive(s) or a lemon twist" do
    expect(ingredients).to match [
       a_string_starting_with(/^\w/),
       a_string_matching(/olives?|twist/)
    ]
  end
end
