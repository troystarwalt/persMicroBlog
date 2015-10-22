l1 - lambda {puts "hi bitch"}
l1.call
end

l4 = lambda do |number|
	number + 1
end

l5 = lambda { |a, b|
	a + b
}

puts l4(5)
puts l5(100,200)