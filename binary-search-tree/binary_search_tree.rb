# insert_at_node and traverse_at_node methods
# inspired by https://gist.github.com/jonaphin/2645532
class Bst
  attr_accessor :root
  def initialize(n)
    @root = Leaf.new(n)
  end

  def insert(n)
    new_leaf = Leaf.new(n)
    insert_at_node(@root, new_leaf)
  end

  def insert_at_node(tree_node, new_leaf)
    if new_leaf.data <= tree_node.data
      return tree_node.left = new_leaf if tree_node.left.nil?
      return insert_at_node(tree_node.left, new_leaf)
    end
    return tree_node.right = new_leaf if tree_node.right.nil?
    insert_at_node(tree_node.right, new_leaf)
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

  def each(&block)
    traverse_at_node(@root, &block)
  end

  def traverse_at_node(node, &block)
    return if node.nil?
    traverse_at_node(node.left, &block)
    yield node.data if block_given?
    traverse_at_node(node.right, &block)
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
