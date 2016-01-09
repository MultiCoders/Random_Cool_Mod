-- crafitem crafts items, its basically a tool, but with no effects!

-- here we are making a salt lump
minetest.register_craftitem('random_cool_stuff:salt_lump', {
	description = 'a salt made of lumps',
	inventory_image = 'random_salt_lump.png',
})

-- here we are making salt
minetest.register_craftitem('random_cool_stuff:salt', {
	description = 'salt, what more can I say?',
	inventory_image = 'random_salt.png',
})

-- here we make the cutting knife
minetest.register_craftitem('random_cool_stuff:poo_lump', {
	description = 'for smearing on people',
	inventory_image = 'poo_lump.png',
})

-- here we are making the charcoal
minetest.register_craftitem('random_cool_stuff:charcoal', {
	description = 'great fuel',
	inventory_image = 'random_charcoal.png'
})