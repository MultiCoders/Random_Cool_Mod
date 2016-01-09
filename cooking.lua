-- makes a cooking recipe
-- pretty self explainable 

--[[ here is the original way to do it

-- make coal with wood stuffz
minetest.register_craft({
	type = 'cooking',
	recipe = 'group:wood',
	output = 'random_cool_stuff:charcoal',
	cooktime = 12,
})
--]]

-- in this table, you put in cooking (???)
local cooking_table = { -- craft, desc, invimg
	{'cooking', 'group:wood', 'random_cool_stuff:charcoal', 20},
	{'cooking', 'group:tree', 'random_cool_stuff:charcoal', 20},
	{'cooking', 'random_cool_stuff:raw_kebab', 'random_cool_stuff:cooked_kebab', 10},
}


-- here we order the order of what we put where
for i in ipairs(cooking_table) do
	local tp = cooking_table[i][1]
	local recp = cooking_table[i][2]
	local outpt = cooking_table[i][3]
	local cktime = cooking_table[i][3]

-- here we tell what does desc mean and what it does on use, and what does craft mean...
minetest.register_craft({
	type = tp,
	recipe = recp,
	output = outpt,
	cooktime = cktime, 
})
end