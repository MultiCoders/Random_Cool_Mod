-- lol
if wool_world then

minetest.register_abm({
	nodenames = {'default:dirt_with_grass'},
	interval = 0,
	chance = 100,
	action = function(pos)
		minetest.add_node(pos, {name = 'wool:white'})
	end,
})

else 
	return
end
