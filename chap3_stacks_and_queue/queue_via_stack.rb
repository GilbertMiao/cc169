class QueueViaStack
  def initialize(stack)
    @queue = stack_to_queue(stack)
  end

  def stack_to_queue(stack)
    queue = []
    queue << stack.pop until stack.empty?
    queue
  end
end
