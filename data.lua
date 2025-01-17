require "gui-styles"

local circuit_wire_connection_points = {
	green = {0, 0},
	red = {0, 0}
}

circuit_wire_connection_points = {
	shadow = circuit_wire_connection_points,
	wire = circuit_wire_connection_points
}

circuit_wire_connection_points = {
	circuit_wire_connection_points,
	circuit_wire_connection_points,
	circuit_wire_connection_points,
	circuit_wire_connection_points
}

data:extend {
	{
		type = "item",
		name = "fluid-memory-unit",
		icon = "__fluid-memory-storage__/graphics/icon/fluid-memory-unit.png",
		icon_size = 64,
		icon_mipmaps = 4,
		stack_size = 50,
		place_result = "fluid-memory-unit",
		order = "c[memory-units]-b[fluid-memory-unit]",
		subgroup = "storage",
		flags = {"primary-place-result"}
	},
	{
		type = "item-with-tags",
		name = "fluid-memory-unit-with-tags",
		weight = 10000000,
		icons = {
			{
				icon = "__fluid-memory-storage__/graphics/icon/fluid-memory-unit.png",
				icon_size = 64,
				scale = 0.5
			},
			{
				icon = "__fluid-memory-storage__/graphics/icon/packing-tape-50.png",
				icon_size = 64,
				icon_mipmaps = 4
			}
		},
		stack_size = 1,
		place_result = "fluid-memory-unit",
		order = "c[memory-units]-b[fluid-memory-unit-with-tags]",
		subgroup = "storage",
		localised_name = {"item-name.fluid-memory-unit-with-tags"},
		localised_description = {"entity-description.fluid-memory-unit"},
		flags = {"not-stackable"},
		hidden = true,
	},
	{
		type = "animation",
		name = "fluid-memory-unit-animation",
		filename = "__fluid-memory-storage__/graphics/entity/fluid-background.png",
		priority = "extra-high",
		size = {256, 256},
		shift = {0.25, -0.0625},
		scale = 0.5,
		frame_count = 16,
		line_length = 8,
		apply_runtime_tint = true
	},
	{
		type = "electric-energy-interface",
		localised_name = {"entity-name.fluid-memory-unit"},
		localised_description = {"entity-description.fluid-memory-unit"},
		energy_source = {
			type = "electric",
			usage_priority = "secondary-input",
			buffer_capacity = "1J"
		},
		energy_usage = "1000W",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		icon = "__fluid-memory-storage__/graphics/icon/fluid-memory-unit.png",
		icon_size = 64,
		icon_mipmaps = 4,
		collision_mask = {layers = {}},
		selectable_in_game = false,
		remove_decoratives = "false",
		name = "fluid-memory-unit-powersource",
		quality_indicator_scale = 0,
		hidden = true,
		flags = {"placeable-neutral", "not-selectable-in-game", "not-rotatable", "not-flammable", "placeable-off-grid"}
	},
	{
		name = "fluid-memory-unit",
		type = "storage-tank",
		icon = "__fluid-memory-storage__/graphics/icon/fluid-memory-unit.png",
		icon_size = 64,
		icon_mipmaps = 4,
		fluid_box = {
			volume = 120000,
			pipe_covers = pipecoverspictures(),
			pipe_connections = {
				{position = {0, 1},  direction = defines.direction.south},
				{position = {0, -1}, direction = defines.direction.north},
				{position = {1, 0},  direction = defines.direction.east},
				{position = {-1, 0}, direction = defines.direction.west}
			},
			hide_connection_info = true,
			base_level = -1
		},
		two_direction_only = true,
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		window_bounding_box = {{-1, -1}, {1, 1}},
		pictures = {
			picture = {
				filename = "__fluid-memory-storage__/graphics/entity/fluid-memory-unit.png",
				priority = "high",
				size = {256, 256},
				shift = {0.25, -0.0625},
				scale = 0.5
			},
		},
		flow_length_in_ticks = 360,
		corpse = "medium-remnants",
		flags = {"player-creation", "placeable-neutral", "not-rotatable"},
		placeable_by = {item = "fluid-memory-unit", count = 1},
		minable = {
			result = "fluid-memory-unit",
			mining_time = 1
		},
		max_health = 1500,
		se_allow_in_space = true,
		not_inventory_moveable = true
	},
	{
		type = "recipe",
		name = "fluid-memory-unit",
		ingredients = {
			{type = "item", name = "storage-tank",            amount = 2},
			{type = "item", name = "efficiency-module",       amount = 2},
			{type = "item", name = "energy-shield-equipment", amount = 2}
		},
		results = {{type = "item", name = "fluid-memory-unit", amount = 1}},
		main_product = "fluid-memory-unit",
		enabled = false
	},
	{
		type = "technology",
		name = "fluid-memory-storage",
		icon = "__fluid-memory-storage__/graphics/technology/fluid-memory-storage.png",
		icon_size = 128,
		effects = {{
			recipe = "fluid-memory-unit",
			type = "unlock-recipe"
		}},
		prerequisites = (mods["deep-storage-unit"] and {"memory-unit"} or {
			"chemical-science-pack",
			"efficiency-module",
			"energy-shield-equipment"
		}),
		unit = {
			count = 200,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack",   1},
				{"chemical-science-pack",   1}
			},
			time = 30
		}
	},
	{
		circuit_wire_connection_points = circuit_wire_connection_points,
		circuit_wire_max_distance = 12,
		collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		flags = {"placeable-neutral", "not-deconstructable", "not-flammable", "not-upgradable", "not-rotatable", "hide-alt-info", "placeable-off-grid"},
		hidden = true,
		icon = "__fluid-memory-storage__/graphics/icon/fluid-memory-unit.png",
		icon_size = 64,
		icon_mipmaps = 4,
		item_slot_count = 1,
		name = "fluid-memory-unit-combinator",
		type = "constant-combinator",
		quality_indicator_scale = 0,
		collision_mask = {layers = {}},
		remove_decoratives = "false",
		activity_led_light_offsets = {{0, 0}, {0, 0}, {0, 0}, {0, 0}},
		selection_priority = 51,
		placeable_by = {item = "fluid-memory-unit", count = 0}
	}
}
