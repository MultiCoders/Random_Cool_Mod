-- crafitem crafts items, its basically a tool, but with no effects!

--[[ here is the original way to do it 

-- here we are making a salt lump
minetest.register_craftitem('random_cool_stuff:salt_lump', {
	description = 'a salt made of lumps',
	inventory_image = 'random_salt_lump.png',
})
--]]

-- in this table, you put in items XD
local craftitem_table = { -- craft, desc, invimg
	{'charcoal', 'great fuel', 'random_charcoal.png'},
	{'poo_lump', 'for smearing on people', 'poo_lump.png'},
	{'salt', 'what more can i say?', 'random_salt.png'},
	{'salt_lump', 'a salt made of lumps', 'random_salt_lump.png'},
}


-- here we order the order of what we put where
for i in ipairs(craftitem_table) do
	local item = craftitem_table[i][1]
	local desc = craftitem_table[i][2]
	local invimg = craftitem_table[i][3]

-- here we tell what does desc mean and what it does on use, and what does craft mean...
minetest.register_craftitem('random_cool_stuff:'..item, {
	description = desc,
	inventory_image = invimg,
})
end