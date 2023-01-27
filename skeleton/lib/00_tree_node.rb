
class PolyTreeNode
    attr_reader :value ,:children, :parent
 def initialize(value)
    @value = value 
    @children=[]
    @parent =nil
 end


 require "byebug"
 def parent=(node)
    # debugger
    return  if node == parent 

        # i have parents and i got step parents now bye old parents
    if @parent != nil && node != nil
        @parent.children.delete(self)
        @parent = node 
        @parent.children << self
    end

  #if parents == nil technically getting adopting 
    if @parent == nil 
        @parent = node 
        @parent.children << self
    end 
#im 21 leave my parent i want to be my own 
    if node == nil 
        @parent.children.delete(self)
        @parent = nil
    end
 end

    def add_child(node)
            node.parent = self      
    end

    def remove_child(node)
        raise "nop" if !self.children.include?(node)
        node.parent = nil 
    end


end