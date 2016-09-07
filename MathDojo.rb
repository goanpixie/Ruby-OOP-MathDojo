# class MathDojo
#   attr_accessor :sum #lets sum be a part of callback attributes
#   def initialize
#     @sum = 0
#   end
#   def add(*numbers)
#     @sum = numbers.flatten.inject(@sum) { |sum, number| sum + number } #helps chaining methods
#     self
#   end
#   def subtract(*numbers)
#     @sum = numbers.flatten.inject(@sum) { |sum, number| sum - number } #helps chaining methods
#     self
#   end
# end

# puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).sum


# -----------------------Arrays-----------------------------------------------------

class MathDojo
  attr_accessor :sum
  def initialize
    @sum = 0
  end
  def add(*arg)
  	if arg.class == Array
		@sum += arg.flatten.reduce(:+)
	else
		@sum += arg
	end
    self
  end

 def subtract(*arg)
  	if arg.class == Array
		@sum -= arg.flatten.reduce(:+)
	else
		@sum -= arg
	end
    self
  end
end

puts MathDojo.new.add([2, 5],[6,7]).subtract([1,2],[1]).sum



# class MathDojo
# 	def initialize
# 		@sum = 0
# 	end
# 	def add(int, *rest)
# 		int.class == Fixnum ?	@sum += int : int.each{|i| @sum += i}
# 		rest.each{|i| i.class == Fixnum ? @sum += i : i.each {|y| @sum += y}}
# 		return self
# 	end
# 	def subtract(int, *rest)
# 		int.class == Fixnum ? @sum -= int : int.each {|i| @sum -= i}
# 		rest.each {|i| i.class == Fixnum ? @sum -= i : i.each {|y| @sum -= y}}
# 		return self
# 	end
# 	def sum
# 		return @sum
# 	end
# end

# x = MathDojo.new.add(2,3)
# y = MathDojo.new.add(2).add(2, 5)
# z = MathDojo.new.add(2).add(2, 5).subtract(3, 2)
# a = MathDojo.new.add(1).add(8, [2, 4.3, 1.25])
# b = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3])

# puts x.sum
# puts y.sum
# puts z.sum
# puts a.sum
# puts b.sum
