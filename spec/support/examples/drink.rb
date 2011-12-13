share_examples_for "a drink" do
  it { should have_attribute(:booze) }
  it { should have_attribute(:glass) }
  it { should have_readable_attribute(:ingredients) }
  it { should be_a ::InitializeWithAttrs }
  its(:ingredients) { should be_a Array }
end
