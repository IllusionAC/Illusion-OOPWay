local Module = {}

-- Define the constructor type, name it whatever you like (be careful with existing types)
export type Object = {
	attribute: boolean,
	setAttribute: (self: Object, state: boolean) -> (),
	getAttribute: (self: Object) -> (boolean),
}

-- naming it new is a convetion
function Module.new(): Object
	-- Can be named anything, self is convention
	local self: Object = {
		-- Define all the attributes (necessary in any cases)
		attribute = true,
		
		-- Predefine all the methods (only necessary for strict TypeChecking)
		setAttribute = function() end,
		
		-- This method return, for strict TypeChecking you'll have to return something of the specified type
		getAttribute = function() return false end,
	}
	
	-- Clearly define the methods intention
	function self:setAttribute(state: boolean)
		self.attribute = state
	end
	
	function self:getAttribute()
		return self.attribute
	end
	
	-- at the end, return the constructor
	return self
end

return Module
