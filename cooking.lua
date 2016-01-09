-- makes a cooking recipe
-- pretty self explainable 

-- make coal with wood stuffz
minetest.register_craft({
	type = 'cooking',
	recipe = 'group:wood',
	output = 'random_cool_stuff:charcoal',
	cooktime = 12,
})


-- make coal with tree stuffz
minetest.register_craft({
	type = 'cooking',
	recipe = 'group:tree',
	output = 'random_cool_stuff:charcoal',
	cooktime = 10,
})

-- cook a kebab with a raw kebab
-- cook time is seconds
minetest.register_craft({
	type = 'cooking',
	recipe = 'random_cool_stuff:raw_kebab',
	output = 'random_cool_stuff:cooked_kebab',
	cooktime = 5,
})