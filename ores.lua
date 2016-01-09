-- this is how you make a salt ore

minetest.register_ore{
	ore_type = 'sheet',
	ore = 'random_cool_stuff:salt_ore',
	wherein = 'default:stone',
	clust_size = 2,
	height_min = .3100,
	height_max = 200,
	noise_params = {offset = 0, scale = 3, spread = {x = 250, y = 250, z = 250}, seed = 23, octaves = 2, persist = 0.70} -- what does this do?
}