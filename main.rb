require './lib/microwave.rb'
require './lib/dishwasher.rb'

instance1 = Microwave.create(door: :closed, timer: :timer, power: :on)
instance2 = Microwave.create(door: :open, timer: :timer, power: :on)

p instance1.start
p instance2.start

p "==============="

instance1 = Dishwasher.create(door: :closed, power: :on)
instance2 = Dishwasher.create(door: :open, power: :on)

p instance1.start
p instance2.start

