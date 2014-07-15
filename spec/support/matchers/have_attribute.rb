module AttributeMatchers
  RSpec::Matchers.define :have_readable_attribute do |name|
    match do |target|
      getter = name.to_sym
      target.respond_to?(getter)
    end
  end

  RSpec::Matchers.define :have_writable_attribute do |name|
    match do |target|
      setter = (name.to_s + "=").to_sym
      target.respond_to?(setter)
    end
  end

  RSpec::Matchers.define :have_attribute do |name|
    match do |target|
      expect(target).to have_readable_attribute(name) &
        have_writable_attribute(name)
    end
  end
end

RSpec.configure do |config|
  config.include AttributeMatchers
end
