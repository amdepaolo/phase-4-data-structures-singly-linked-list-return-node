require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    if head.nil?|| n < 1
      return nil
    end

    current_node = head
    list_length = 0

    while current_node
      current_node = current_node.next_node
      list_length +=1
    end

    node_position = list_length - n
    desired_node = head

    if node_position < 0
      return nil
    end

    node_position.times do 
      desired_node = desired_node.next_node
    end

    return desired_node.value
  end

end
