-- 基础信息
local base_info = {
	group_id = 133302062
}

-- DEFS_MISCS
local defs = 
{
gallery_id = 24004,
challenge_time = 120,
--挑战操作台的configID
starter_gadget = 62001, 
--终点region的configID
end_regionID = 62006, 
--开启操作台后立刻加载的suites
load_on_start = {2, 4, 5}, 
--终点所在的suite
end_suite = 4, 
--赛道regions
parkour_regions = {62008},
--教学区region的configID
guide_regionID = 62005,
look_pos = {x=-503.35, y=197.3, z=3328.191},
duration = 2,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 62001, gadget_id = 70350457, pos = { x = -523.693, y = 193.318, z = 3338.020 }, rot = { x = 5.354, y = 2.062, z = 5.615 }, level = 30, area_id = 22 },
	{ config_id = 62002, gadget_id = 70360025, pos = { x = -464.682, y = 181.264, z = 3170.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62003, gadget_id = 70220103, pos = { x = -464.760, y = 191.432, z = 3170.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62004, gadget_id = 70220084, pos = { x = -523.289, y = 194.061, z = 3337.836 }, rot = { x = 346.074, y = 116.020, z = 331.353 }, level = 1, area_id = 22 },
	{ config_id = 62010, gadget_id = 70220122, pos = { x = -471.676, y = 176.066, z = 3185.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62011, gadget_id = 70220121, pos = { x = -490.461, y = 190.604, z = 3309.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62012, gadget_id = 70690011, pos = { x = -480.724, y = 169.906, z = 3285.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62013, gadget_id = 70220103, pos = { x = -483.571, y = 199.247, z = 3271.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62014, gadget_id = 70220122, pos = { x = -475.446, y = 194.953, z = 3231.384 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62015, gadget_id = 70330197, pos = { x = -471.676, y = 174.308, z = 3185.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62016, gadget_id = 70220122, pos = { x = -520.726, y = 194.595, z = 3336.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62017, gadget_id = 70220121, pos = { x = -503.354, y = 197.303, z = 3328.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62018, gadget_id = 70690011, pos = { x = -483.571, y = 165.019, z = 3271.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62019, gadget_id = 70690011, pos = { x = -503.354, y = 166.582, z = 3328.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62020, gadget_id = 70690011, pos = { x = -480.559, y = 164.038, z = 3259.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62022, gadget_id = 70220121, pos = { x = -479.666, y = 191.984, z = 3239.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62024, gadget_id = 70220103, pos = { x = -490.461, y = 196.911, z = 3309.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62027, gadget_id = 70220103, pos = { x = -503.354, y = 200.000, z = 3328.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62030, gadget_id = 70220121, pos = { x = -490.461, y = 195.253, z = 3309.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62031, gadget_id = 70330197, pos = { x = -490.461, y = 185.397, z = 3309.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62032, gadget_id = 70220122, pos = { x = -490.461, y = 187.504, z = 3309.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62033, gadget_id = 70220121, pos = { x = -490.461, y = 193.096, z = 3309.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62036, gadget_id = 70220121, pos = { x = -491.440, y = 187.278, z = 3308.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62037, gadget_id = 70220121, pos = { x = -491.441, y = 187.278, z = 3311.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62038, gadget_id = 70220121, pos = { x = -489.881, y = 187.278, z = 3308.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62039, gadget_id = 70220121, pos = { x = -484.345, y = 198.107, z = 3269.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62040, gadget_id = 70220121, pos = { x = -484.345, y = 198.107, z = 3272.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62041, gadget_id = 70220121, pos = { x = -482.785, y = 198.107, z = 3269.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62042, gadget_id = 70220121, pos = { x = -504.117, y = 198.895, z = 3326.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62043, gadget_id = 70220121, pos = { x = -504.117, y = 198.895, z = 3329.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62044, gadget_id = 70220121, pos = { x = -502.557, y = 198.895, z = 3326.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62045, gadget_id = 70220121, pos = { x = -502.557, y = 198.895, z = 3329.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62046, gadget_id = 70220121, pos = { x = -504.781, y = 198.895, z = 3328.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62047, gadget_id = 70220121, pos = { x = -501.787, y = 198.895, z = 3328.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62049, gadget_id = 70220122, pos = { x = -480.559, y = 193.050, z = 3259.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62052, gadget_id = 70220121, pos = { x = -479.086, y = 188.727, z = 3238.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62053, gadget_id = 70330197, pos = { x = -479.666, y = 186.845, z = 3239.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62054, gadget_id = 70690001, pos = { x = -475.446, y = 194.953, z = 3231.384 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62056, gadget_id = 70220084, pos = { x = -480.724, y = 195.906, z = 3285.723 }, rot = { x = 353.237, y = 189.559, z = 255.476 }, level = 1, area_id = 22 },
	{ config_id = 62058, gadget_id = 70220121, pos = { x = -489.881, y = 187.278, z = 3311.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62059, gadget_id = 70220121, pos = { x = -492.104, y = 187.278, z = 3309.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62060, gadget_id = 70220121, pos = { x = -489.111, y = 187.278, z = 3309.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62063, gadget_id = 70220122, pos = { x = -483.571, y = 198.281, z = 3271.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62067, gadget_id = 70220121, pos = { x = -464.760, y = 189.449, z = 3170.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62068, gadget_id = 70220121, pos = { x = -464.760, y = 185.765, z = 3170.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62069, gadget_id = 70220121, pos = { x = -464.760, y = 187.806, z = 3170.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62074, gadget_id = 70220103, pos = { x = -480.724, y = 195.906, z = 3285.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62075, gadget_id = 70220121, pos = { x = -481.497, y = 194.765, z = 3284.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62076, gadget_id = 70220121, pos = { x = -481.497, y = 194.765, z = 3287.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62077, gadget_id = 70220121, pos = { x = -479.938, y = 194.765, z = 3284.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62078, gadget_id = 70220121, pos = { x = -479.938, y = 194.765, z = 3287.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62079, gadget_id = 70220121, pos = { x = -482.161, y = 194.765, z = 3285.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62080, gadget_id = 70220121, pos = { x = -479.168, y = 194.765, z = 3285.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62081, gadget_id = 70220121, pos = { x = -482.785, y = 198.107, z = 3272.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62082, gadget_id = 70220121, pos = { x = -485.009, y = 198.107, z = 3270.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62083, gadget_id = 70220121, pos = { x = -482.015, y = 198.107, z = 3270.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62084, gadget_id = 70330197, pos = { x = -492.443, y = 180.681, z = 3260.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62085, gadget_id = 70220122, pos = { x = -492.443, y = 182.408, z = 3260.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62086, gadget_id = 70330197, pos = { x = -484.696, y = 186.238, z = 3294.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62087, gadget_id = 70220122, pos = { x = -484.696, y = 187.966, z = 3294.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62088, gadget_id = 70220121, pos = { x = -481.439, y = 191.900, z = 3257.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62089, gadget_id = 70220121, pos = { x = -481.439, y = 191.900, z = 3260.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62090, gadget_id = 70220121, pos = { x = -479.880, y = 191.900, z = 3257.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62091, gadget_id = 70220121, pos = { x = -479.880, y = 191.900, z = 3260.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62092, gadget_id = 70220121, pos = { x = -482.103, y = 191.900, z = 3259.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62093, gadget_id = 70220121, pos = { x = -479.110, y = 191.900, z = 3259.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62094, gadget_id = 70220122, pos = { x = -479.666, y = 188.953, z = 3239.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62095, gadget_id = 70220121, pos = { x = -480.645, y = 188.727, z = 3238.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62096, gadget_id = 70220121, pos = { x = -480.646, y = 188.727, z = 3241.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62097, gadget_id = 70220121, pos = { x = -479.086, y = 188.727, z = 3241.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62098, gadget_id = 70220121, pos = { x = -481.309, y = 188.727, z = 3240.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62099, gadget_id = 70220121, pos = { x = -478.316, y = 188.727, z = 3240.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62100, gadget_id = 70220103, pos = { x = -479.666, y = 194.288, z = 3239.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62102, gadget_id = 70690001, pos = { x = -473.058, y = 194.953, z = 3224.823 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62105, gadget_id = 70220103, pos = { x = -471.676, y = 189.309, z = 3185.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 62106, gadget_id = 70220121, pos = { x = -472.453, y = 190.921, z = 3185.644 }, rot = { x = 85.674, y = 178.079, z = 177.674 }, level = 30, area_id = 22 },
	{ config_id = 62107, gadget_id = 70220121, pos = { x = -472.445, y = 187.840, z = 3185.411 }, rot = { x = 85.674, y = 178.079, z = 177.674 }, level = 30, area_id = 22 },
	{ config_id = 62108, gadget_id = 70220121, pos = { x = -470.893, y = 190.927, z = 3185.633 }, rot = { x = 85.674, y = 178.079, z = 177.674 }, level = 30, area_id = 22 },
	{ config_id = 62109, gadget_id = 70220121, pos = { x = -470.886, y = 187.844, z = 3185.400 }, rot = { x = 85.674, y = 178.079, z = 177.674 }, level = 30, area_id = 22 },
	{ config_id = 62110, gadget_id = 70220121, pos = { x = -473.113, y = 189.390, z = 3185.533 }, rot = { x = 85.674, y = 178.079, z = 177.674 }, level = 30, area_id = 22 },
	{ config_id = 62111, gadget_id = 70220121, pos = { x = -470.120, y = 189.400, z = 3185.512 }, rot = { x = 85.674, y = 178.079, z = 177.674 }, level = 30, area_id = 22 },
	-- C1
	{ config_id = 62115, gadget_id = 70350085, pos = { x = -503.344, y = 198.308, z = 3328.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	-- C2
	{ config_id = 62116, gadget_id = 70350085, pos = { x = -490.461, y = 186.578, z = 3309.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	-- C2
	{ config_id = 62117, gadget_id = 70710126, pos = { x = -490.461, y = 185.454, z = 3309.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	-- C3
	{ config_id = 62118, gadget_id = 70350085, pos = { x = -479.666, y = 188.100, z = 3239.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	-- C3
	{ config_id = 62119, gadget_id = 70710126, pos = { x = -479.666, y = 186.845, z = 3239.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	-- C4
	{ config_id = 62120, gadget_id = 70350085, pos = { x = -464.702, y = 181.908, z = 3170.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	-- C4
	{ config_id = 62121, gadget_id = 70710126, pos = { x = -464.702, y = 181.088, z = 3170.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 62005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -523.742, y = 194.292, z = 3338.485 }, area_id = 22 },
	{ config_id = 62006, shape = RegionShape.SPHERE, radius = 2, pos = { x = -464.609, y = 181.217, z = 3170.400 }, area_id = 22 },
	{ config_id = 62007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -490.461, y = 191.065, z = 3309.398 }, area_id = 22 },
	{ config_id = 62008, shape = RegionShape.CUBIC, size = { x = 150.000, y = 120.000, z = 300.000 }, pos = { x = -487.683, y = 166.021, z = 3253.492 }, area_id = 22 },
	{ config_id = 62021, shape = RegionShape.SPHERE, radius = 3, pos = { x = -521.692, y = 194.020, z = 3336.645 }, area_id = 22 },
	{ config_id = 62062, shape = RegionShape.SPHERE, radius = 2, pos = { x = -479.666, y = 188.100, z = 3239.928 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1062007, name = "ENTER_REGION_62007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62007", action = "action_EVENT_ENTER_REGION_62007" },
	{ config_id = 1062021, name = "ENTER_REGION_62021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62021", action = "action_EVENT_ENTER_REGION_62021" },
	{ config_id = 1062062, name = "ENTER_REGION_62062", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62062", action = "action_EVENT_ENTER_REGION_62062" }
}

-- 点位
points = {
	{ config_id = 62009, pos = { x = -523.495, y = 193.641, z = 3339.831 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, area_id = 22 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 62001 },
		regions = { 62005 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 分段1,
		monsters = { },
		gadgets = { 62004, 62016, 62017, 62019, 62042, 62043, 62044, 62045, 62046, 62047, 62115 },
		regions = { 62021 },
		triggers = { "ENTER_REGION_62021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 分段2,
		monsters = { },
		gadgets = { 62011, 62012, 62024, 62027, 62030, 62031, 62032, 62033, 62036, 62037, 62038, 62056, 62058, 62059, 62060, 62074, 62075, 62076, 62077, 62078, 62079, 62080, 62116, 62117 },
		regions = { 62007 },
		triggers = { "ENTER_REGION_62007" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 终点,
		monsters = { },
		gadgets = { 62002 },
		regions = { 62006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 挑战区域,
		monsters = { },
		gadgets = { },
		regions = { 62008 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 分段3,
		monsters = { },
		gadgets = { 62013, 62018, 62020, 62022, 62039, 62040, 62041, 62049, 62052, 62053, 62063, 62081, 62082, 62083, 62084, 62085, 62086, 62087, 62088, 62089, 62090, 62091, 62092, 62093, 62094, 62095, 62096, 62097, 62098, 62099, 62100, 62118, 62119 },
		regions = { 62062 },
		triggers = { "ENTER_REGION_62062" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 分段4,
		monsters = { },
		gadgets = { 62003, 62010, 62014, 62015, 62054, 62067, 62068, 62069, 62102, 62105, 62106, 62107, 62108, 62109, 62110, 62111, 62120, 62121 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_62007(context, evt)
	if evt.param1 ~= 62007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62007(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302062, 6)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302062, EntityType.GADGET, 62116 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302062, EntityType.GADGET, 62117 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_62021(context, evt)
	if evt.param1 ~= 62021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62021(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302062, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302062, EntityType.GADGET, 62115 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_62062(context, evt)
	if evt.param1 ~= 62062 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62062(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302062, 7)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302062, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302062, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302062, EntityType.GADGET, 62118 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302062, EntityType.GADGET, 62119 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_0/Activity_Parkour"