-- machete sounds weird, so im calling it cool_swrd
-- steal for realizm, cuz what would minetest be without realizm?
-- interestingly enough, the bronze sword is more durable than the steel one...
-- whoever wrote this game failed at life...

minetest.register_tool('random_cool_stuff:admin_swrd', {
	description = 'its a cool swrd!(?)',
	inventory_image = 'random_cool_swrd.png',
	tool_capabilities = {
		full_punch_interval = 1, -- interval of punching, remember not to make it OP!!!
		max_drop_level = 100, -- im not sure what this does, but let's make it OP
		groupcaps = {
			crumbly = {times = {[1] = 4, [2] = 2, [3] = 1.5}, uses = 50, maxlevel = 3}, -- for dirt stuff
			choppy = {times = {[1] = 7, [2] = 5, [3] = 3}, uses = 50, maxlevel = 3}, -- for wood stuff
			snappy = {times = {[1] = 1.5, [2] = 1, [3] = 0.75}, uses = 50, maxlevel = 3}, -- for snappy(?) stuff
			cracky = {times = {[1] = 11, [2] = 9, [3] = 7}, uses = 50, maxlevel = 3}, -- for mining stuff
		},
	
		damage_groups = {fleshy = 18} -- this sword is badass and kicks 9 hearts off of you MLG-PRO style
	},
})

-- this is the knife
minetest.register_tool('random_cool_stuff:knife', {
	description = 'omg, it is a knife, who are you going to kill now??!!!',
	inventory_image = 'random_knife.png',
	wield_scale = {x = 3.5, y = 3, z = 1}, -- depth, height, thickness
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level = 100,
		groupcaps = {
			crumbly = {times = {[1] = 5, [2] = 3, [3] = 1.5}, uses = 50, maxlevel = 3}, -- for dirt stuff
			choppy = {times = {[1] = 9, [2] = 7, [3] = 5}, uses = 50, maxlevel = 3}, -- for wood stuff
			snappy = {times = {[1] = 1, [2] = 0.75, [3] = 0.5}, uses = 50, maxlevel = 3}, -- for snappy(?) stuff
			cracky = {times = {[1] = 15, [2] = 12, [3] = 10}, uses = 50, maxlevel = 3}, -- for mining stuff
		},

		damage_groups = {fleshy = 14}
	},
})
