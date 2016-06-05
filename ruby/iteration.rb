def block_taker
	puts "Hey there"
	yield(4)
end

block_taker {|index| puts "another string #{index}"}

avengers = ["Iron Man", "Captain America", "Thor", "Hulk"]

dc_alias = {
	superman: "Clark Kent",
	batman: "Bruce Wayne",
	catwoman: "Selina Kyle"
}

p avengers
p dc_alias

avengers.each do |superhero|
	puts "#{superhero} is a part of the Avengers."
end
p avengers

avengers.map! do |superhero|
	puts "Here comes #{superhero}!"
	superhero.upcase
end
p avengers

avengers_downcase = avengers.map do |superhero|
	puts "Here comes #{superhero}!"
	superhero.downcase
end
p avengers_downcase

dc_alias.each do |superhero, normal|
	puts "#{normal} is actually #{superhero}!"
end

dc_alias2 = dc_alias.map do |superhero, normal|
	superhero.upcase
end
p dc_alias2

values = [ 100, 101, 1000, 1001, 10000, 10001 ]
p values.select {|value| value.odd?}

p values.take(3)

p values.drop_while {|value| value < 1500}

values.delete_if {|value| value <= 1000}
p values

test_scores = {
	a: 90,
	b: 80,
	c: 70,
	d: 60
}

p test_scores.select {|grade, score| score < 75 && score > 65}

p test_scores.key(90)

test_scores.keep_if {|grade, score| score >= 70}
p test_scores

test_scores.delete_if {|grade, score| score < 75 && score > 65}
p test_scores