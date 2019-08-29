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

  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select do |meal|
      meal.waiter == self
    end
  end

  def waiters
    meals.map{|meal| meal.waiter }
  end

end
