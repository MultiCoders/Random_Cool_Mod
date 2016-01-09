-- makes a fuel recipe
-- recipe is basically fuel
-- burntime is seconds

-- cook stuff with charcoal 
minetest.register_craft({
	type = 'fuel',
	recipe = 'random_cool_stuff:charcoal',
	burntime = 22
})

-- cook stuff with sticks
minetest.register_craft({
	type = 'fuel',
	recipe = 'default:stick',
	burntime = 4
})

-- cook stuff with cotton
minetest.register_craft({
	type = 'fuel',
	recipe = 'farming:cotton',
	burntime = 6
})

-- cook stuff with wool
minetest.register_craft({
	type = 'fuel',
	recipe = 'group:wool',
	burntime = 9
})