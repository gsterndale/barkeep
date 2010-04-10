module Barkeep
  module Drink

    include ::InitializeWithAttrs

    attr_accessor :booze, :glass

    def ingredients
      [ self.booze ].compact
    end

  end
end

