class Waiter
  attr_accessor :name, :year

  @@all = []
  def initialize(name, year)
    @name = name
    @year = year
    @@all << self
  end

  def self.all
    @@all
  end
end
