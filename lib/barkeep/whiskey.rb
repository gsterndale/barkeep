module Barkeep
  class Whiskey

    include Drink

    def self.neat
      new booze: 'whiskey'
    end
  end
end
