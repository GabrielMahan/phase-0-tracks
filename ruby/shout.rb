module Shout
  def yell_angrily(words)
  	words + "!!!" + ":("
  end

  def yell_happily(words)
  	words + "!!!" + ":D"
  end
end


class Sports_fans
	include Shout 
end

class Giants
	include Shout
end

giant = Giants.new
p giant.yell_angrily("hey")
p giant.yell_angrily("I'm a giant")

fan = Sports_fans.new
p fan.yell_happily("I like sportzz")