-- 基础信息
local base_info = {
	group_id = 133310113
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 113001, monster_id = 26090901, pos = { x = -2958.098, y = 296.841, z = 4737.663 }, rot = { x = 0.000, y = 166.423, z = 0.000 }, level = 32, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 28 },
	{ config_id = 113002, monster_id = 26090901, pos = { x = -2958.484, y = 297.291, z = 4734.920 }, rot = { x = 0.000, y = 134.199, z = 0.000 }, level = 32, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 28 },
	{ config_id = 113003, monster_id = 26090901, pos = { x = -2958.579, y = 297.600, z = 4732.074 }, rot = { x = 0.000, y = 152.953, z = 0.000 }, level = 32, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 28 },
	{ config_id = 113004, monster_id = 26120401, pos = { x = -2958.861, y = 297.600, z = 4729.797 }, rot = { x = 0.000, y = 186.321, z = 0.000 }, level = 32, drop_tag = "大蕈兽", isOneoff = true, pose_id = 101, area_id = 28 },
	{ config_id = 113031, monster_id = 25210203, pos = { x = -2942.804, y = 297.752, z = 4727.130 }, rot = { x = 0.000, y = 25.476, z = 0.000 }, level = 32, drop_tag = "镀金旅团", isOneoff = true, pose_id = 9511, area_id = 28 },
	{ config_id = 113032, monster_id = 25210303, pos = { x = -2941.970, y = 297.752, z = 4728.841 }, rot = { x = 0.000, y = 207.087, z = 0.000 }, level = 32, drop_tag = "镀金旅团", isOneoff = true, pose_id = 9512, area_id = 28 },
	{ config_id = 113037, monster_id = 25210101, pos = { x = -2946.006, y = 298.600, z = 4743.547 }, rot = { x = 0.000, y = 216.661, z = 0.000 }, level = 32, drop_tag = "镀金旅团", isOneoff = true, pose_id = 9505, area_id = 28 },
	{ config_id = 113038, monster_id = 25210403, pos = { x = -2949.093, y = 299.270, z = 4714.777 }, rot = { x = 0.000, y = 339.270, z = 0.000 }, level = 32, drop_tag = "镀金旅团", isOneoff = true, pose_id = 9503, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 113005, gadget_id = 70300105, pos = { x = -2945.188, y = 298.900, z = 4744.715 }, rot = { x = 1.230, y = 315.413, z = 14.112 }, level = 32, area_id = 28 },
	{ config_id = 113006, gadget_id = 71700105, pos = { x = -2947.189, y = 298.770, z = 4746.076 }, rot = { x = 353.038, y = 359.246, z = 12.340 }, level = 32, area_id = 28 },
	{ config_id = 113007, gadget_id = 71700105, pos = { x = -2946.493, y = 298.667, z = 4744.219 }, rot = { x = 0.584, y = 159.256, z = 346.625 }, level = 32, area_id = 28 },
	{ config_id = 113008, gadget_id = 71700105, pos = { x = -2946.542, y = 298.909, z = 4745.830 }, rot = { x = 13.281, y = 212.441, z = 353.934 }, level = 32, area_id = 28 },
	{ config_id = 113009, gadget_id = 70220128, pos = { x = -2942.435, y = 297.630, z = 4728.042 }, rot = { x = 0.000, y = 102.621, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 113010, gadget_id = 70710352, pos = { x = -2942.965, y = 297.752, z = 4729.626 }, rot = { x = 0.000, y = 117.739, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 113011, gadget_id = 70710352, pos = { x = -2942.108, y = 297.723, z = 4726.198 }, rot = { x = 359.219, y = 213.141, z = 356.288 }, level = 32, area_id = 28 },
	{ config_id = 113012, gadget_id = 71700226, pos = { x = -2944.070, y = 299.122, z = 4744.484 }, rot = { x = 5.100, y = 160.321, z = 347.942 }, level = 32, area_id = 28 },
	{ config_id = 113013, gadget_id = 70220048, pos = { x = -2937.927, y = 301.851, z = 4749.789 }, rot = { x = 352.239, y = 32.767, z = 4.514 }, level = 32, isOneoff = true, area_id = 28 },
	{ config_id = 113014, gadget_id = 70220048, pos = { x = -2935.978, y = 301.897, z = 4749.884 }, rot = { x = 345.233, y = 359.076, z = 7.125 }, level = 32, isOneoff = true, area_id = 28 },
	{ config_id = 113015, gadget_id = 70220048, pos = { x = -2940.659, y = 301.125, z = 4749.165 }, rot = { x = 0.000, y = 61.518, z = 0.000 }, level = 32, isOneoff = true, area_id = 28 },
	{ config_id = 113016, gadget_id = 70220048, pos = { x = -2945.161, y = 302.281, z = 4755.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, area_id = 28 },
	{ config_id = 113017, gadget_id = 70220048, pos = { x = -2943.106, y = 302.394, z = 4755.313 }, rot = { x = 0.000, y = 27.608, z = 0.000 }, level = 32, isOneoff = true, area_id = 28 },
	{ config_id = 113018, gadget_id = 70220048, pos = { x = -2947.104, y = 301.873, z = 4756.205 }, rot = { x = 0.000, y = 55.319, z = 0.000 }, level = 32, isOneoff = true, area_id = 28 },
	{ config_id = 113019, gadget_id = 70220048, pos = { x = -2941.834, y = 301.897, z = 4752.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, area_id = 28 },
	{ config_id = 113020, gadget_id = 70220050, pos = { x = -2946.190, y = 301.914, z = 4754.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, area_id = 28 },
	{ config_id = 113021, gadget_id = 70220051, pos = { x = -2945.302, y = 302.104, z = 4754.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, area_id = 28 },
	{ config_id = 113022, gadget_id = 70220051, pos = { x = -2945.604, y = 301.970, z = 4754.057 }, rot = { x = 0.000, y = 109.864, z = 0.000 }, level = 32, isOneoff = true, area_id = 28 },
	{ config_id = 113023, gadget_id = 70220052, pos = { x = -2943.339, y = 302.173, z = 4754.005 }, rot = { x = 0.000, y = 105.894, z = 0.000 }, level = 32, isOneoff = true, area_id = 28 },
	{ config_id = 113024, gadget_id = 70220052, pos = { x = -2943.911, y = 302.236, z = 4754.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, area_id = 28 },
	{ config_id = 113025, gadget_id = 71700226, pos = { x = -2944.172, y = 298.911, z = 4743.086 }, rot = { x = 356.269, y = 117.836, z = 348.102 }, level = 32, area_id = 28 },
	{ config_id = 113026, gadget_id = 70710352, pos = { x = -2943.059, y = 299.204, z = 4743.750 }, rot = { x = 3.481, y = 152.908, z = 347.386 }, level = 32, area_id = 28 },
	{ config_id = 113027, gadget_id = 70710352, pos = { x = -2943.383, y = 298.872, z = 4742.196 }, rot = { x = 11.780, y = 236.098, z = 7.927 }, level = 32, area_id = 28 },
	{ config_id = 113028, gadget_id = 70300104, pos = { x = -2943.970, y = 297.685, z = 4726.820 }, rot = { x = 0.164, y = 228.714, z = 353.973 }, level = 32, area_id = 28 },
	{ config_id = 113029, gadget_id = 70210101, pos = { x = -2943.834, y = 299.084, z = 4744.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 113030, gadget_id = 70210101, pos = { x = -2943.821, y = 298.886, z = 4742.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 113033, gadget_id = 70310009, pos = { x = -2938.703, y = 298.542, z = 4737.863 }, rot = { x = 346.528, y = 62.803, z = 355.331 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 113034, gadget_id = 71700105, pos = { x = -2947.102, y = 297.658, z = 4725.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 113035, gadget_id = 71700105, pos = { x = -2944.486, y = 297.672, z = 4726.970 }, rot = { x = 0.000, y = 96.718, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 113036, gadget_id = 71700105, pos = { x = -2946.604, y = 297.615, z = 4725.775 }, rot = { x = 0.000, y = 77.343, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 113039, gadget_id = 70710352, pos = { x = -2948.400, y = 299.201, z = 4714.335 }, rot = { x = 0.000, y = 144.024, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 113040, gadget_id = 70710037, pos = { x = -2949.920, y = 299.324, z = 4715.224 }, rot = { x = 349.365, y = 236.153, z = 358.080 }, level = 32, area_id = 28, is_enable_interact = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 113001 },
			{ config_id = 113002 },
			{ config_id = 113003 },
			{ config_id = 113004 }
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 113005, state = 0 },
			{ config_id = 113006, state = 0 },
			{ config_id = 113007, state = 0 },
			{ config_id = 113008, state = 0 },
			{ config_id = 113009, state = 0 },
			{ config_id = 113010, state = 0 },
			{ config_id = 113011, state = 0 },
			{ config_id = 113012, state = 0 },
			{ config_id = 113013, state = 0 },
			{ config_id = 113014, state = 0 },
			{ config_id = 113015, state = 0 },
			{ config_id = 113016, state = 0 },
			{ config_id = 113017, state = 0 },
			{ config_id = 113018, state = 0 },
			{ config_id = 113019, state = 0 },
			{ config_id = 113020, state = 0 },
			{ config_id = 113021, state = 0 },
			{ config_id = 113022, state = 0 },
			{ config_id = 113023, state = 0 },
			{ config_id = 113024, state = 0 },
			{ config_id = 113025, state = 0 },
			{ config_id = 113026, state = 0 },
			{ config_id = 113027, state = 0 },
			{ config_id = 113028, state = 0 },
			{ config_id = 113029, state = 0 },
			{ config_id = 113030, state = 0 },
			{ config_id = 113033, state = 201 },
			{ config_id = 113034, state = 0 },
			{ config_id = 113035, state = 0 },
			{ config_id = 113036, state = 0 },
			{ config_id = 113039, state = 0 },
			{ config_id = 113040, state = 0 }
		},
		monsters = {
			{ config_id = 113031 },
			{ config_id = 113032 },
			{ config_id = 113037 },
			{ config_id = 113038 }
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================