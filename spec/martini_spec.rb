require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Barkeep::Martini do
  it_should_behave_like "a drink"
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
