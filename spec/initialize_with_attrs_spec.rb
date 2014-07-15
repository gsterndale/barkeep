require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

module InitializeWithAttrsSpec
  class Book
    include InitializeWithAttrs
    attr_accessor :pages
  end
end

describe InitializeWithAttrsSpec::Book, "initialized with attribute Hash" do
  subject { InitializeWithAttrsSpec::Book.new(:pages => pages) }
  let(:pages) { 123 }

  describe '#pages' do
    subject { super().pages }
    it { is_expected.to eq(pages) }
  end
end
