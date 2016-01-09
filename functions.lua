-- function for the paricle..
function gray_particle_system(pos)
	minetest.add_particlespawner({
			amount = 50,
			time = 0, -- 0 is infinity
			minpos = {x = pos.x - 0.25, y = pos.y, z = pos.z - 0.25}, -- the minimum position
			maxpos = {x = pos.x + 0.25, y = pos.y, z = pos.z + 0.25}, -- the maximum position
			minvel = {x = .1, y = -.3, z = .1}, -- the minimum direction/speed
			maxvel = {x = .4, y = -.5, z = .1}, -- the maximum direction/speed
			minacc = {x = .2, y = .2, z = .2}, -- the minimum acceleration speed
			minacc = {x = .3, y = .3, z = .3}, -- the maximum acceleration speed
			minexptime = 1, -- minimum single particle expiration time
			minexptime = 1, -- maximum single particle expiration time
			minsize = 1, -- the minimum size
			maxsize = 2, -- the maximum size
			collisiondetection = true, -- collision detection
			texture = 'random_poo_particle.png',
			vertical = false, -- particles only go vertically
--          playername = 'singleplayer'
-- the line above makes it only singleplayer
		})
end