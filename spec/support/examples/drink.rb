shared_examples_for "a drink" do
  it { is_expected.to have_attribute(:booze) }
  it { is_expected.to have_attribute(:glass) }
  it { is_expected.to have_readable_attribute(:ingredients) }
  it { is_expected.to be_a ::InitializeWithAttrs }

  describe '#ingredients' do
    subject { super().ingredients }
    it { is_expected.to be_a Array }
  end
end
