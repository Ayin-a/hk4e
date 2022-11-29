-- 基础信息
local base_info = {
	group_id = 133301763
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
	{ config_id = 763028, gadget_id = 70290003, pos = { x = -50.423, y = 270.659, z = 3442.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 763029, gadget_id = 70500000, pos = { x = -50.423, y = 270.762, z = 3442.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 763028, area_id = 29 },
	{ config_id = 763030, gadget_id = 70500000, pos = { x = -50.423, y = 270.762, z = 3443.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 763028, area_id = 29 },
	{ config_id = 763031, gadget_id = 70290003, pos = { x = -57.758, y = 261.175, z = 3434.401 }, rot = { x = 0.000, y = 302.287, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 763032, gadget_id = 70500000, pos = { x = -57.758, y = 261.278, z = 3434.310 }, rot = { x = 0.000, y = 302.287, z = 0.000 }, level = 27, point_type = 3003, owner = 763031, area_id = 29 },
	{ config_id = 763033, gadget_id = 70500000, pos = { x = -57.758, y = 261.278, z = 3434.502 }, rot = { x = 0.000, y = 302.287, z = 0.000 }, level = 27, point_type = 3003, owner = 763031, area_id = 29 },
	{ config_id = 763035, gadget_id = 70290003, pos = { x = -184.204, y = 240.168, z = 3518.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 763036, gadget_id = 70500000, pos = { x = -184.204, y = 240.271, z = 3518.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 763035, area_id = 29 },
	{ config_id = 763037, gadget_id = 70500000, pos = { x = -184.204, y = 240.271, z = 3518.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 763035, area_id = 29 },
	{ config_id = 763038, gadget_id = 70290003, pos = { x = -243.444, y = 251.638, z = 3482.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 763039, gadget_id = 70500000, pos = { x = -243.444, y = 251.741, z = 3482.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 763038, area_id = 29 },
	{ config_id = 763040, gadget_id = 70500000, pos = { x = -243.444, y = 251.741, z = 3482.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 763038, area_id = 29 },
	{ config_id = 763041, gadget_id = 70290003, pos = { x = -161.715, y = 255.050, z = 3665.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 763042, gadget_id = 70500000, pos = { x = -161.715, y = 255.153, z = 3665.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 763041, area_id = 29 },
	{ config_id = 763043, gadget_id = 70500000, pos = { x = -161.715, y = 255.153, z = 3666.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 763041, area_id = 29 }
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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 763001, monster_id = 28030313, pos = { x = -59.142, y = 251.733, z = 3439.368 }, rot = { x = 0.000, y = 292.433, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763002, monster_id = 28030313, pos = { x = -55.432, y = 270.894, z = 3442.719 }, rot = { x = 0.000, y = 320.466, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763003, monster_id = 28020313, pos = { x = -172.250, y = 249.255, z = 3556.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 29 },
		{ config_id = 763004, monster_id = 28030313, pos = { x = -51.630, y = 248.078, z = 3425.655 }, rot = { x = 0.000, y = 342.048, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763005, monster_id = 28030313, pos = { x = -65.949, y = 247.529, z = 3429.633 }, rot = { x = 0.000, y = 26.813, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763006, monster_id = 28030313, pos = { x = -69.606, y = 247.139, z = 3432.973 }, rot = { x = 0.000, y = 272.432, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763007, monster_id = 28030313, pos = { x = -67.279, y = 248.890, z = 3446.312 }, rot = { x = 0.000, y = 318.683, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763008, monster_id = 28030313, pos = { x = -43.474, y = 255.847, z = 3430.539 }, rot = { x = 0.000, y = 320.466, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763009, monster_id = 28030313, pos = { x = -72.739, y = 245.274, z = 3437.601 }, rot = { x = 0.000, y = 257.666, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763010, monster_id = 28030313, pos = { x = -72.507, y = 245.275, z = 3440.055 }, rot = { x = 0.000, y = 329.257, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763011, monster_id = 28040103, pos = { x = 4.379, y = 246.500, z = 3426.431 }, rot = { x = 0.000, y = 237.838, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 29 },
		{ config_id = 763012, monster_id = 28040103, pos = { x = 0.335, y = 246.500, z = 3421.229 }, rot = { x = 0.000, y = 301.106, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 29 },
		{ config_id = 763013, monster_id = 28040103, pos = { x = -0.247, y = 246.500, z = 3418.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 29 },
		{ config_id = 763014, monster_id = 28040103, pos = { x = 3.829, y = 246.500, z = 3427.231 }, rot = { x = 0.000, y = 260.071, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 29 },
		{ config_id = 763015, monster_id = 28040103, pos = { x = -0.362, y = 244.980, z = 3419.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 29 },
		{ config_id = 763016, monster_id = 28030313, pos = { x = -103.573, y = 247.995, z = 3441.921 }, rot = { x = 0.000, y = 30.315, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763017, monster_id = 28030313, pos = { x = -105.201, y = 248.242, z = 3441.591 }, rot = { x = 0.000, y = 332.588, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763018, monster_id = 28030313, pos = { x = -99.200, y = 245.787, z = 3447.073 }, rot = { x = 0.000, y = 56.219, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763019, monster_id = 28030313, pos = { x = -33.828, y = 267.701, z = 3444.346 }, rot = { x = 0.000, y = 63.385, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763020, monster_id = 28030313, pos = { x = -51.859, y = 246.570, z = 3458.562 }, rot = { x = 0.000, y = 10.058, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763021, monster_id = 28030313, pos = { x = -61.318, y = 259.775, z = 3435.023 }, rot = { x = 0.000, y = 266.264, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763022, monster_id = 28030313, pos = { x = -60.954, y = 259.805, z = 3433.993 }, rot = { x = 0.000, y = 257.666, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 },
		{ config_id = 763023, monster_id = 28020313, pos = { x = -190.711, y = 249.267, z = 3395.948 }, rot = { x = 0.000, y = 84.611, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 29 },
		{ config_id = 763024, monster_id = 28020314, pos = { x = -191.751, y = 249.550, z = 3393.364 }, rot = { x = 0.000, y = 1.700, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 29 },
		{ config_id = 763025, monster_id = 28020314, pos = { x = -188.962, y = 248.825, z = 3397.881 }, rot = { x = 0.000, y = 160.581, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 29 },
		{ config_id = 763026, monster_id = 28020314, pos = { x = -174.969, y = 249.565, z = 3554.921 }, rot = { x = 0.000, y = 1.700, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 29 },
		{ config_id = 763027, monster_id = 28030313, pos = { x = -156.190, y = 274.937, z = 3523.847 }, rot = { x = 0.000, y = 224.310, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 29 }
	},
	gadgets = {
		{ config_id = 763034, gadget_id = 70211031, pos = { x = -51.826, y = 270.760, z = 3441.273 }, rot = { x = 359.539, y = 271.045, z = 3.035 }, level = 26, drop_tag = "战斗超级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 29 },
		{ config_id = 763044, gadget_id = 70217020, pos = { x = -177.870, y = 241.264, z = 3567.339 }, rot = { x = 0.000, y = 304.072, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 29 }
	}
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
		gadgets = { 763028, 763029, 763030, 763031, 763032, 763033, 763035, 763036, 763037, 763038, 763039, 763040, 763041, 763042, 763043 },
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