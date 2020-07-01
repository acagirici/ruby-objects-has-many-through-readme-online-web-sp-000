class Meal
  attr_accessor :waiter, :cutomer, :total, :tip 
  @@all = []
  
  def initialize(waiter, customer, total, tip=0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(customer, total, tip=0)
    Meal.new(customer, self, total, tip)
  end
  
end