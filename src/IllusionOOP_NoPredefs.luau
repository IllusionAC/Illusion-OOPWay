local Module = {}
-- This version avoids pre-definitions, it's more optimized.

-- Define the constructor type, name it whatever you like (be careful with existing types)
export type Object = {
	attribute: boolean,
	setAttribute: (self: Object, state: boolean) -> (),
	getAttribute: (self: Object) -> (boolean),
}

-- naming it new is a convetion
function Module.new(): Object
	-- Can be named anything, self is convention
	local self = {} :: Object -- Cast Object type to self to avoid predefinitions 
	
	--[[ you can also define the attributes directly inside the self:
	local self = {
		self.attribute = false
	} :: Object
	]]--
	
	-- Define attributes like this
	self.attribute = false
	
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
