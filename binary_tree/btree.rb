class BTree
  #binary tree



end


class Node

  def initialize(data, parent = nil, left_child = nil, right_child = nil)
   @parent = parent
   @left_child = left_child
   @right_child = right_child
   @data = data
 end

end
