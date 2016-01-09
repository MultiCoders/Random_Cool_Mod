-- makes a fuel recipe
-- recipe is basically fuel
-- burntime is seconds

--[[ here is the original way to do it

-- cook stuff with charcoal 
minetest.register_craft({
	type = 'fuel',
	recipe = 'random_cool_stuff:charcoal',
	burntime = 22
})
--]]

-- in this table, you put in fuel XD
local fuel_table = { -- craft, desc, invimg
	{'fuel', 'random_cool_stuff:charcoal', 22},
	{'fuel', 'default:stick', 5},
	{'fuel', 'farming:cotton', 7},
	{'fuel', 'group:wool', 10},
}


-- here we order the order of what we put where
for i in ipairs(fuel_table) do
	local tp = fuel_table[i][1]
	local recp = fuel_table[i][2]
	local brntime = fuel_table[i][3]

-- here we tell what does desc mean and what it does on use, and what does craft mean...
minetest.register_craft({
	type = tp,
	recipe = recp,
	burntime = brntime, 
})
end