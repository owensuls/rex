# Problem: Traverse a directory tree, and print name of each file and folder in the tree.
# Notes:
  # Queue: Works on FIFO basis. Queues are thread safe.
  # Stack: Works on LIFO basis.

class Node
  attr_accessor :children, :value, :level
  def initialize(value, level = 0, children = [])
    @value    = value
    @level    = level
    @children = children
  end

  def to_s
    "value = #{value}, level = #{level}"
  end
end

def traverse_tree(data)
  while !data.empty? do
    node = data.pop
    puts node.value

    children_names = Dir.glob("#{node.value}/*").map { |f| File.basename(f) }
    #puts children_names.inspect

    children_names.each do |child_name|
      child_node = Node.new("#{node.value}/#{child_name}", node.level + 1)
      node.children << child_node
      data << child_node
    end
  end
end

initial_dir = ARGV[0]
fail 'you need to provide a dir argument' if initial_dir.nil?
fail "File or folder #{initial_dir} does not exist" unless File.exist?(initial_dir)

root = Node.new(File.path(initial_dir), 0)
puts root

data = Queue.new
data << root
traverse_tree(data)
