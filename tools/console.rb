require_relative '../config/environment.rb'

a1 = Artist.new("Weng", 3)
a2 = Artist.new("Jin", 5)
a3 = Artist.new("Richard", 8)

g1 = Gallery.new("Moma", "NYC")
g2 = Gallery.new("MoLA", "LA")
g3 = Gallery.new("MoSF", "SF")

p1 = Painting.new("Sandwich", 300000,a1,g1)
p2 = Painting.new("Fries", 400000,a1,g2)
p3 = Painting.new("Burger", 350000,a1,g3)
p4 = Painting.new("Steak", 250000,a2,g1)
p5 = Painting.new("Apple", 500000,a2,g3)
p6 = Painting.new("Banana", 450000,a3,g1)
p7 = Painting.new("Dumpling", 550000,a3,g2)


binding.pry

puts "Bob Ross rules."
