class Tree
  def initialize(root = nil)
    @root = root
  end

  def breadth_first_traversal(node)
    result = []
    nodes_to_visit = [node]

    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      result.push(node[:value])
      nodes_to_visit = nodes_to_visit + node[:children]
    end
    
    result
  end

  def depth_first_traversal(node, result = [])
    result.push(node[:value])

    node[:children].each do |child|
      depth_first_traversal(child, result)
    end
  end

  def get_element_by_id(string)
    # compare root id to string
    nodes_to_visit = [@root]
    
    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      if node[:id] == string
        return node
      else
        nodes_to_visit = nodes_to_visit + node[:children]
      end
    end

    nil
  end

end