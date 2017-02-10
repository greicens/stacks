require_relative 'singly_linked_list'

class Stack
  attr_reader :top, :contents

  def initialize(top=nil)
        @contents = SinglyLinkedList.new(top)
        @top = @contents.head
  end

  def inspect
    @contents.inspect
  end

  def push (element)
    @contents.insert_at_start(element)
    @top = @contents.head
  end

  def pop
    element_deleted = @top
    @contents.remove_from_start
    @top = @contents.head
    element_deleted.data
  end

  def empty?
    @contents.empty?
  end

end
