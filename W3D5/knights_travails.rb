Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@jnthnsu 
Learn Git and GitHub without any code!
Using the Hello World guide, you’ll start a branch, write comments, and open a pull request.


1
00higgsj82/aA-Projects
 Code Issues 0 Pull requests 0 Actions Projects 0 Wiki Security Insights
aA-Projects/W3D5/node_skeleton/lib/00_tree_node.rb / 
@higgsj82 higgsj82 Finializes Polytree Node
6bb1561 3 days ago
67 lines (51 sloc)  1.18 KB
  
You're using code navigation to jump to definitions or references.
Learn more or give us feedback
require 'byebug'
module Searchable

    def dfs(target_value)
        return self if self.value == target_value
       self.children.each do |child|
             search = child.dfs(target_value) 
             return search unless search.nil?
        end
        nil
    end
    
    
    def bfs(target_value)
    
        queue = [self]
        until queue.empty?
            current_node = queue.shift
            queue += current_node.children
           return current_node if current_node.value == target_value
        end
        nil
    end
end

class PolyTreeNode

include Searchable

    def initialize(value=nil)
        # debugger
        @value = value
        @parent = nil
        @children = []
    end

    def parent
        @parent
    end

    def children
        @children
    end

    def value
        @value
    end

    def parent=(node)
        @parent.children.delete(self) if !@parent.nil?
        @parent = node
        @parent
        node.children << self unless node.nil?
    end

    def add_child(child)
       child.parent = self
    end

    def remove_child(child)
        child.parent = nil
        raise 'not a child' if !@children.include?(child)
    end

  

end
© 2019 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
