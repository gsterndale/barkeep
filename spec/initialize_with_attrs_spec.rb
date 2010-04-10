require 'spec/spec_helper'

module InitializeWithAttrsSpec
  class Book
    include InitializeWithAttrs
    attr_accessor :pages
  end
end

describe InitializeWithAttrsSpec::Book, "initialized with attribute Hash" do
  subject { InitializeWithAttrsSpec::Book.new(:pages => 123) }
  it "should have attributes with values from Hash" do
    subject.pages.should == 123
  end
end
