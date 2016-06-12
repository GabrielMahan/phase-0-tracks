

module Flight
	#apparently it doesn't need the self. because it's a mixin... hmmmm...
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
	include Flight
end

class Plane
	include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)