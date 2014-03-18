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
		inventory_image = "clothing_inv_shirt_"..k.."_overlay.png ^ clothing_shirt_inv_white.png",
		texture = "clothing_shirt_"..k.."_overlay.png  ^  clothing_shirt_white.png",
		groups = {armor_torso=1, armor_heal=5, armor_use=2000},
		wear = 0,
	})

	minetest.register_tool("clothing:pants_"..k, {
		description = k.." pants",
		inventory_image = "clothing_inv_pants_"..k.."_overlay.png ^ clothing_pants_inv_white.png",
		texture = "clothing_pants_"..k.."_overlay.png  ^  clothing_pants_white.png",
		groups = {armor_legs=1, armor_heal=5, armor_use=2000},
		wear = 0,
	})
end




-- Register White Stuff

minetest.register_tool("clothing:shirt_white", {
	description = "White shirt",
	inventory_image = "clothing_inv_shirt_white.png",
	texture = "clothing_shirt_white.png",
	groups = {armor_torso=1, armor_heal=5, armor_use=2000},
	wear = 0,
})
minetest.register_tool("clothing:pants_white", {
	description = "White pants",
	inventory_image = "clothing_inv_pants_white.png",
	texture = "clothing_pants_white.png",
	groups = {armor_legs=1, armor_heal=5, armor_use=2000},
	wear = 0,
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