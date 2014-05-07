dofile(minetest.get_modpath(minetest.get_current_modname()).."/clothing.lua")

--[[
BIG THANKS TO STU, WHO MADE THIS ALL POSSIBLE
]]--

-- Crafting
local craft_ingreds = {
red = "wool:red",
blue = "wool:blue",
yellow = "wool:yellow",
}	

for k, v in pairs(craft_ingreds) do
minetest.register_craft({
output = "clothing:shirt_"..k,
recipe = {
{v, "", v},
{v, v, v},
{v, v, v},
},
})
minetest.register_craft({
output = "clothing:pants_"..k,
recipe = {
{v, v, v},
{v, "", v},
{v, "", v},
},
})
minetest.register_tool("clothing:shirt_"..k, {
description = k.." shirt",
inventory_image = "clothing_inv_shirt_"..k.."_overlay.png^clothing_shirt_inv_white.png",
texture = "clothing_shirt_"..k.."_overlay.png^clothing_shirt_white.png",
groups = {clothing=1, no_preview=1},
})

minetest.register_tool("clothing:pants_"..k, {
description = k.." pants",
inventory_image = "clothing_inv_pants_"..k.."_overlay.png^clothing_pants_inv_white.png",
texture = "clothing_pants_"..k.."_overlay.png^clothing_inv_pants_white.png",
groups = {clothing=1, no_preview=1},
})
end




-- Register White Stuff

minetest.register_tool("clothing:shirt_white", {
description = "White shirt",
inventory_image = "clothing_inv_shirt_white.png",
texture = "clothing_shirt_white.png",
groups = {clothing=1, no_preview=1},
})
minetest.register_tool("clothing:pants_white", {
description = "White pants",
inventory_image = "clothing_inv_pants_white.png",
texture = "clothing_pants_white.png",
groups = {clothing=1, no_preview=1},
})
minetest.register_craft({
output = "clothing:shirt_white",
recipe = {
{"wool:white", "", "wool:white"},
{"wool:white", "wool:white", "wool:white"},
{"wool:white", "wool:white", "wool:white"},
},
})
minetest.register_craft({
output = "clothing:pants_white",
recipe = {
{"wool:white", "wool:white", "wool:white"},
{"wool:white", "", "wool:white"},
{"wool:white", "", "wool:white"},
},
})

-- Stu's Stuff
minetest.register_craftitem("clothing:hindsight_shirt", {
	description = "Captain Hindsight Shirt",
	inventory_image = "clothing_inv_hindsight_shirt.png",
	groups = {clothing=1},
})

minetest.register_craftitem("clothing:hindsight_pants", {
	description = "Captain Hindsight Pants",
	inventory_image = "clothing_inv_hindsight_pants.png",
	groups = {clothing=1},
})

minetest.register_craftitem("clothing:hindsight_boots", {
	description = "Captain Hindsight Boots",
	inventory_image = "clothing_inv_hindsight_boots.png",
	groups = {clothing=1},
})

minetest.register_craftitem("clothing:hindsight_cape", {
	description = "Captain Hindsight Cape",
	inventory_image = "clothing_inv_hindsight_cape.png",
	groups = {clothing=1, no_preview=1},
})

minetest.register_craftitem("clothing:paper_bag", {
	description = "Paper Bag",
	inventory_image = "clothing_inv_paper_bag.png",
	groups = {clothing=1, no_preview=1},
})

