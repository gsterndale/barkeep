module Barkeep
  class Martini

    include Drink::Cocktail

    def self.dirty
      new booze: 'vodka', mixer: 'olive juice'
    end
  end
end
