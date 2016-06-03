class GameStrategy
  def initialize(items = [])
    @items = items
  end

end

class MaxStrategy < GameStrategy
  def choose_item
    @items.max
  end
end

class MinStrategy < GameStrategy
  def choose_item
    @items.min
  end
end

class RandomStrategy < GameStrategy
  def choose_item
    @items.sample
  end
end

class StrategyFactory
  def self.create_strategy(items = [], type = :random)
    case type
    when :max then MaxStrategy.new(items)
    when :min then MinStrategy.new(items)
    when :random then RandomStrategy.new(items)
    else
      raise "#{type} is not a valid strategy"
    end
  end
end

class Game
  def initialize(items = [])
    @strategy = StrategyFactory.create_strategy(items, :min)
  end

  def choose_item
    @strategy.choose_item
  end
end

game = Game.new([1,2,3,4,5])

puts "Items in my games: #{game}"

puts "element: #{game.choose_item}"
