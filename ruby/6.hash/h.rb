class Stack
  def initialize
    @contents = []
  end

  __(1)__
end

stack = Stack.new
stack.push("foo")
stack.push("bar")
p stack.pop

[Execution Result]
"bar"