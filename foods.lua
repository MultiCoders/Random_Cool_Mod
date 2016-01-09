-- the comment below shows the original way to make food
--[[
minetest.register_craftitem('random_cool_stuff:cooked_kebab', {
	description = 'still looks disgusting',
	inventory_image = 'random_cooked_kebab.png',
	on_use = minetest.item_eat(7)
})
]]--


--[[ 
creates a table called food table
local creates local variables to be used in that table
original functions such as 'description' will not work, you will have to rename them, such as to 'desc'
it needs to have the i in ipairs so it has the index of information, 
use this method because it is more efficent
]]--

-- in this table, you put in food XD
local food_table = { -- craft, desc, invimg, health
	{'raw_kebab', 'raw indonesian food', 'raw_kebab.png', 4},
	{'cooked_kebab', 'still looks disgusting', 'cooked_kebab.png', 12}, 
}

-- here we order the order of what we put where
for i in ipairs(food_table) do
	local craft = food_table[i][1]
	local desc = food_table[i][2]
	local invimg = food_table[i][3]
	local health = food_table[i][4]

-- here we tell what does desc mean and what it does on use, and what does craft mean...
minetest.register_craftitem('random_cool_stuff:'..craft, {
	description = desc,
	inventory_image = 'random_'..invimg,
	on_use = minetest.item_eat(health),
})
end