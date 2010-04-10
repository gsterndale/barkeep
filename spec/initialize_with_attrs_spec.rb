require 'spec/spec_helper'

module InitializeWithAttrsSpec
  class Book
    include InitializeWithAttrs
    attr_accessor :pages
  end
end

describe InitializeWithAttrsSpec::Book, "initialized with attribute Hash" do
  subject { InitializeWithAttrsSpec::Book.new(:pages => pages) }
  let(:pages) { 123 }
  its(:pages) { should == pages }
end
