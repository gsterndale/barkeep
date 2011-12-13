module Barkeep
  module Drink
    module Cocktail

      include Drink

      attr_accessor :garnish, :mixer

      def ingredients
        self.mixer ? super << self.mixer : super
      end

    end
  end
end
