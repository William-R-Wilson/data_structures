require 'pp'

class LinkedList

  attr_accessor :headNode, :length

  def initialize(data = nil)
    if data != nil
      @headNode = Node.new(data)
    else
      @headNode = nil
    end
  end

  def append(data) #add to end of list
    currentNode = @headNode
    if currentNode.nil?
      @headNode = Node.new(data)
    else
      until currentNode.nextNode.nil?
        currentNode = currentNode.nextNode
      end
      currentNode.nextNode = Node.new(data)
    end
  end

  def prepend(data) #add to front of list
    if @headNode.nil?
      @headNode = Node.new(data)
    else
      newHead = @headNode.clone
      @headNode = Node.new(data)
      @headNode.nextNode = newHead
    end
  end

  def size
    currentNode = @headNode
    counter = 0
    if @headNode.nil?
      counter = 0
    else
      until currentNode.nil?
        currentNode = currentNode.nextNode
        counter += 1
      end
    end
    return counter
  end

  def empty? #this assumes that @headNode hasn't been deleted, leaving the other nodes
    @headNode.nil?
  end

  def head
    if @headNode.nil?
      ""
    else
      @headNode.data
    end
  end

  def tail
    currentNode = @headNode
    until currentNode.nextNode.nil?
      currentNode = currentNode.nextNode
    end
    currentNode.data
  end

  def at(index)
    if (self.size - 1) < index
      return "Error!  Index out of range"
    else
      currentNode = @headNode
      counter = 0
      until counter == index
        currentNode = currentNode.nextNode
        counter += 1
      end
      return currentNode.data
    end
  end

  def pop
    #can't use tail because I need next to last as well as last
    if self.empty?
      return "Cannot pop from empty list"
    end
    penultimate = @headNode
    if penultimate.nextNode == nil
      returnval = @headNode.data
      @headNode.data = nil
      return returnval
    end
    ultimate = penultimate.nextNode
    until ultimate.nextNode.nil?
      penultimate = ultimate
      ultimate = penultimate.nextNode
    end
    penultimate.nextNode = nil
    returnVal = ultimate.data
    ultimate = nil
    return returnVal
  end

  def print_each
    currentNode = @headNode
    until currentNode.nil?
      currentNode.display
      currentNode = currentNode.nextNode
    end
  end

end
