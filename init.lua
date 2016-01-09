dofile(minetest.get_modpath("random_cool_stuff").."/abms.lua")
dofile(minetest.get_modpath("random_cool_stuff").."/crafting.lua")
dofile(minetest.get_modpath("random_cool_stuff").."/cooking.lua")
dofile(minetest.get_modpath("random_cool_stuff").."/fuels.lua")
dofile(minetest.get_modpath("random_cool_stuff").."/foods.lua")
dofile(minetest.get_modpath("random_cool_stuff").."/nodes.lua")
dofile(minetest.get_modpath("random_cool_stuff").."/tools.lua")
dofile(minetest.get_modpath("random_cool_stuff").."/ores.lua")
dofile(minetest.get_modpath("random_cool_stuff").."/craftitem.lua")
dofile(minetest.get_modpath("random_cool_stuff").."/functions.lua")
dofile(minetest.get_modpath("random_cool_stuff").."/config.txt")

-- if this is true, then run this file
-- we determine if this is true in config.txt
if admin_craft then
	dofile(minetest.get_modpath("random_cool_stuff").."/crafting.lua")
end

if bed_kill then
	dofile(minetest.get_modpath("random_cool_stuff").."/nodes.lua")
end

if wool_world then
	dofile(minetest.get_modpath("random_cool_stuff").."/abms.lua")
end



--[[
this is how you use a for loop!
im commenting this out because I dont need it for this mod, yet!
and it will be a comment for the same reason
I am putting it in init.lua because it is easier to find the mini tutorial here...
I am putting all learning material in init.lua :)


for i = 1, 150 
this counts from 1 to 150, and it does the function seperatly each time, so it does 1(pos.y + 1, pos.x + 1) the first time
and then when it does it another time it does 2(pos.y + 1, + pos.x + 1) 
this would be the same since 1 * 2 = 1
that is why numbers mess it up!
different numbers mess it up in different patterns :P

minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = 'random_cool_stuff:some_node'})
this is the function, in this case we show what we want to do to this variable, which we put inside *name*

minetest.set_node({x = pos.x + i, y = pos.y + i, z = pos.z}, {name = 'some_mod:some_node'})
we add i to x and y, so we basically create a stairway to heaven that is 150 blocks up! 
we have to with which node we are doing this though, and that is what name is for 

end, 
because you have to end all loops...
i stands for index
--]]



--[[
for i = 1, 150 do 
	minetest.set_node({x = pos.x + 1, y = pos.y + 1, z = pos.z}, {name = 'default:dirt'})
end
]]-- 



-- the reason that code does not work is because this must happen when something else happens
-- for example when you place a block, then this would happen
-- however I do not need this
-- If i would put this in a file it would be in abms.lua :)