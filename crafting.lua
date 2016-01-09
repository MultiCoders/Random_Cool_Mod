-- create cotton with grass
minetest.register_craft({
	output = 'farming:cotton',
	recipe = {
	{'default:grass_1', 'default:grass_1', 'default:grass_1'},
	{'default:grass_1', 'default:grass_1', 'default:grass_1'}
	}
})

-- creates a barrel
minetest.register_craft({
	output = 'random_cool_stuff:barrel',
	recipe = {
		{'default:stick', 'group:wood', 'default:stick'},
		{'default:stick', '', 'default:stick'},
		{'default:stick', 'group:wood', 'default:stick'},
	}
})

-- raw kebab
minetest.register_craft({
	output = 'random_cool_stuff:raw_kebab',
	recipe = {
		{'mobs:meat_raw'},
		{'mobs:meat_raw'},
		{'default:stick'},
	}
})

--  cooked kebab
minetest.register_craft({
	output = 'random_cool_stuff:cooked_kebab',
	recipe = {
		{'mobs:meat'},
		{'mobs:meat'},
		{'default:stick'},
	}
})

-- knife
minetest.register_craft({
	output = 'random_cool_stuff:knife',
	recipe = {
		{'default:steel_ingot'},
		{'default:stick'},
	}
})

-- salt
minetest.register_craft({
	output = 'random_cool_stuff:salt',
	recipe = {
		{'random_cool_stuff:salt_lump'}, 
		{'random_cool_stuff:knife'},
	},
		replacements = {
			{'random_cool_stuff:knife', 'random_cool_stuff:knife'},
		},
})

-- change config.txt to make the admin sword craftable
if admin_craft then 

	minetest.register_craft({
		output = 'random_cool_stuff:admin_swrd',
		recipe = {
			{'default:iron_lump'},
			{'default:coal_lump'},
			{'default:stick'},
		}
	})

else 
	return
end
