share_examples_for "a drink" do
  it { should have_attribute(:booze) }
  it { should have_attribute(:glass) }
  it { should be_a ::InitializeWithAttrs }
end
