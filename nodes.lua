-- no one knows why, but why the fuck not!
-- stupid barrel
-- note to self, when drawing crap, you can use code to delete all white space - go to wiki for more info XD
-- paramtype light adds shadowing instead of making the mesh dark
-- parmatype 2 facedir means block faces where you place it

-- the leafy bed!!!
minetest.register_node('random_cool_stuff:leafy_bed', {
	description = 'a leaf of beds',
	drawtype = 'mesh',
	mesh = 'random_leafy_bed.obj',
	tiles = {'random_leafy_bed.png'},
	groups = {snappy = 2, oddly_breakable_by_hand = 1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = {
		type = 'fixed',
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.2, 1.5}, -- right, bottom, back, left, top, front
		},

	collision_box = {
		type = 'fixed',
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.2, 1.5}, -- right, bottom, back, left, top, front
		},

	after_place_node = function(pos, placer, itemstack)
		local n = minetest.get_node_or_nil(pos) -- get the location of the placed node, n is the variable
		if not n or not n.param2 then -- if there is no coordiantes then remove the node and place it in inventory
			minetest.remove_node(pos) -- removes the node
			return true
		end

		local dir = minetest.facedir_to_dir(n.param2) -- figure out where the node is facing, n is the variable
		local p = {x = pos.x + dir.x, y = pos.y, z = pos.z + dir.z} -- the placement, y shouldnt change, another variable
		local n2 = minetest.get_node_or_nil(p) -- wtf
		local def = minetest.registered_items[n2.name] or nil  -- WTF
		if not n2 or not def or not def.buildable_to then --remove the node if it isnt placeable
			mintest.remove_node(pos)
			return true
		end
	end,

	on_rightclick = function(pos, node, clicker)
		beds.on_rightclick(pos, clicker)
	if bed_kill then
		local health = clicker:get_hp() -- WTF
		clicker:set_hp(health - 20) -- leafy beds give you rashes!
	else
		local health = clicker:get_hp() -- WTF
		clicker:set_hp(health - 4) -- leafy beds give you rashes!
	end
	end,
})
-- end of the leafy bed

-- the salt ore
minetest.register_node('random_cool_stuff:salt_ore', {
	description = 'salt ore, needs cutting',
	tiles = {'default_stone.png^random_salt_ore.png'},
	is_ground_content = true,
	groups = {cracky = 3},
	drop = 'random_cool_stuff:salt_lump',
	sounds = default.node_sound_stone_defaults(),
})

-- make the poo
minetest.register_node('random_cool_stuff:poo_block', {
	description = 'its poo!',
	tiles = {'random_poo_block.png'},
	groups = {soil = 1, crumbly = 2},
	drop = 'random_cool_stuff:poo_lump',
-- here are some particles
-- here we are executing the poo particle function
	after_place_node = function(pos) gray_particle_system(pos)
	end, 
})

-- use chance to show the chance of happening
-- interval is seconds

-- this makes it so when you break dirt there is 1/15 chance to get gravel
-- alaways use override! its better!
minetest.override_item('default:dirt_with_grass', {
	drop = {
		items = {

			{
			items = {'default:gravel'},
			rarity = 15
			},

			{
			items = {'default:dirt'},
			},
		},
	}
})

-- this makes it so when you break dirt there is 1/15 chance to get gravel
-- alaways use override! its better!
minetest.override_item('default:dirt', {
	drop = {
		items = {

			{
			items = {'default:gravel'},
			rarity = 15
			},

			{
			items = {'default:dirt'},
			},
		},
	}
})


-- this makes it so when you break glass you get glass fragments
minetest.override_item('default:glass', {
	drop = {
		items = {
		{'vessels:glass_fragments'},
		},
	}
})