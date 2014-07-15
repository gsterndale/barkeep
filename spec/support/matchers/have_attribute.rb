module AttributeMatchers

  class HaveAttribute

    def initialize(expected, writer=true, reader=true)
      @expected               = expected
      @reader                 = reader
      @writer                 = writer
      @names_not_responded_to = []
      @names_responded_to     = []
      @names                  = []
      @names << getter if !!reader
      @names << setter if !!writer
      super()
    end

    def description
      "have a #{attribute_adjectives} attribute named #{@expected}"
    end

    def matches?(target)
      @target = target
      @names.each do |name|
        if @target.respond_to?(name)
          @names_responded_to << name
        else
          @names_not_responded_to << name
        end
      end
      @names_not_responded_to.empty?
    end

    def failure_message
      "expected #{@target.inspect} to respond to " <<
        @names_not_responded_to.collect {|name| name.inspect }.join(', ')
    end

    def failure_message_when_negated
      "expected #{@target.inspect} not to respond to " <<
        @names_responded_to.collect {|name| name.inspect }.join(', ')
    end

    def getter
      @expected
    end

    def setter
      (getter.to_s+'=').to_sym
    end

    def attribute_adjectives
      adjectives = []
      adjectives << 'readable' if @reader
      adjectives << 'writable' if @writer
      adjectives.join(' and ')
    end

  end

  def have_attribute(expected)
    HaveAttribute.new(expected)
  end
  alias_method :have_attribute_named, :have_attribute

  def have_readable_attribute(expected)
    HaveAttribute.new(expected, false, true)
  end
  alias_method :have_readable_attribute_named, :have_readable_attribute

  def have_writable_attribute(expected)
    HaveAttribute.new(expected, true, false)
  end
  alias_method :have_writable_attribute_named, :have_writable_attribute

end
