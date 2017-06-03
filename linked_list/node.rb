class Node

  attr_accessor :data, :nextNode

  def initialize(data)
    @data = data
    @nextNode = nil
  end

  def display
    puts @data.to_s
  end

end
