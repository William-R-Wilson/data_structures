require_relative 'linked_list'
require_relative 'node'

l = LinkedList.new("last")
l.prepend("seconde")
l.prepend("first!")
l.print_each
puts "l.size: " + l.size.to_s
puts "l.head: " + l.head.to_s
puts "l.tail: " + l.tail
puts "at index 3: #{l.at(3)}"
puts "at index 2: #{l.at 2}"
puts "at index 0: #{l.at 0}"

puts l.pop

l.print_each
puts l.size
puts "*************************************"

n = LinkedList.new("only one!")

puts "Printing N: "
n.print_each

puts n.pop

puts "Printing N after pop:  "
n.print_each
