class PolyTreeNode
    require "byebug"

    attr_reader :parent, :value, :children

    def initialize(value)
        @parent = nil
        @value = value
        @children = []
    end

    def parent=(node)
        # debugger
              
        if !@parent.nil? #parent exist
            # debugger
            @parent.children.delete(self)
        end
        @parent = node
        
        if !node.nil? && !node.children.include?(self)
            node.children << self
        end

    end

    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
        raise if child_node.parent == nil
        child_node.parent = nil
    end

 7
#1
#2 3
#4 5 6
    def dfs(target_value)
        #self = individual possible values
        return self if self.value == target_value 
        self.children.each do |child|
           leaves = child.dfs(target_value)
            return leaves unless leaves.nil?
        end
        nil
    end

    def bfs(target_value)
        self_array = [self]

        # self_array.each do |ele|
        until self_array.empty? #[1, 2, 3, 4, 5, 6,]
            
            num = self_array.shift #[1] == num     [2, 3, 4, 5, 6]
            return num if num.value == target_value
            num.children.each {|leaves| self_array << leaves}
        end

        nil
        
    end

    def inspect
    # we need this here so that anytime self is returned, we can show only the 
    # object id and keeep the rest of the information about our stack hidden
    # this also might be useful if you have a node that has many children that 
    # also has many children

    "#<Stack:#{self.object_id}>"
  end
end

##<Stack:70368679240740> - parent node