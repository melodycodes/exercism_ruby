class Bst
  def initialize(n)
    @root = Leaf.new(n)
  end

  def insert(n, tree_node = @root)
    n.is_a?(Leaf) ? new_leaf = n : new_leaf = Leaf.new(n)
    if new_leaf.data <= tree_node.data
      return tree_node.left = new_leaf if tree_node.left.nil?
      return insert(new_leaf, tree_node.left)
    end
    return tree_node.right = new_leaf if tree_node.right.nil?
    insert(new_leaf, tree_node.right)
  end

  def data
    @root.data
  end

  def left
    @root.left
  end

  def right
    @root.right
  end

  def each(node = @root, &block)
    return if node.nil?
    each(node.left, &block)
    yield node.data if block_given?
    each(node.right, &block)
    return self if block_given?
  end
end

class Leaf
  attr_accessor :data, :right, :left
  def initialize(n, r = nil, l = nil)
    @data = n
    @right = r
    @left = l
  end
end
