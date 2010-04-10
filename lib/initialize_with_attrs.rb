module InitializeWithAttrs
  def initialize(*args)
    if args.first.is_a?(Hash)
      attributes = args.shift
      attributes.each{|name, value| self.send(name.to_s+'=', value) }
    end
    super(*args)
  end
end

