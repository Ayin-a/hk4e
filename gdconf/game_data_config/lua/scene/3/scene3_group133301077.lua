-- 基础信息
local base_info = {
	group_id = 133301077
}

-- Trigger变量
local defs = {
	door = 77001,
	galleryId = 19102,
	maxPickupTime = 90,
	minusTime = -30,
	challengeRegion = 77021,
	weatherId = 4056,
	fatherChallenge = 267,
	childChallenge = {268,269 },
	transParam_Pos = {x = -203.6333, y = 225.99, z = 3516.57},
	transParam_Rot = {x = 1, y = 319.6249, z = 1},
	transParam_Radius = 1,
	visionType = 33010004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[77020] = { config_id = 77020, monster_id = 26090401, pos = { x = -216.720, y = 230.482, z = 3575.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77023] = { config_id = 77023, monster_id = 26090401, pos = { x = -270.984, y = 226.856, z = 3608.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 103, area_id = 29 },
	[77027] = { config_id = 77027, monster_id = 26090101, pos = { x = -317.374, y = 224.688, z = 3518.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 104, area_id = 29 },
	[77029] = { config_id = 77029, monster_id = 26090401, pos = { x = -235.479, y = 237.975, z = 3479.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77030] = { config_id = 77030, monster_id = 26090401, pos = { x = -265.882, y = 226.393, z = 3603.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77031] = { config_id = 77031, monster_id = 26090201, pos = { x = -313.262, y = 224.079, z = 3493.910 }, rot = { x = 0.000, y = 36.009, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77033] = { config_id = 77033, monster_id = 26120101, pos = { x = -298.541, y = 231.660, z = 3497.553 }, rot = { x = 0.000, y = 277.931, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 102, area_id = 29 },
	[77035] = { config_id = 77035, monster_id = 26090701, pos = { x = -232.102, y = 234.273, z = 3594.812 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77036] = { config_id = 77036, monster_id = 26090701, pos = { x = -236.029, y = 233.417, z = 3603.524 }, rot = { x = 0.000, y = 300.151, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77038] = { config_id = 77038, monster_id = 26090201, pos = { x = -303.330, y = 226.854, z = 3495.896 }, rot = { x = 0.000, y = 275.606, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 102, area_id = 29 },
	[77040] = { config_id = 77040, monster_id = 26090401, pos = { x = -234.790, y = 237.888, z = 3475.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77043] = { config_id = 77043, monster_id = 26090701, pos = { x = -228.541, y = 234.241, z = 3605.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77045] = { config_id = 77045, monster_id = 26090701, pos = { x = -211.985, y = 230.947, z = 3487.776 }, rot = { x = 0.000, y = 319.943, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77047] = { config_id = 77047, monster_id = 26090701, pos = { x = -227.634, y = 234.497, z = 3596.181 }, rot = { x = 0.000, y = 88.889, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77048] = { config_id = 77048, monster_id = 26090701, pos = { x = -216.563, y = 232.642, z = 3484.447 }, rot = { x = 0.000, y = 287.258, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77051] = { config_id = 77051, monster_id = 26090801, pos = { x = -282.731, y = 243.117, z = 3468.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77052] = { config_id = 77052, monster_id = 26090801, pos = { x = -287.382, y = 242.172, z = 3469.201 }, rot = { x = 0.000, y = 41.258, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 101, area_id = 29 },
	[77062] = { config_id = 77062, monster_id = 26090801, pos = { x = -316.638, y = 220.364, z = 3610.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 104, area_id = 29 },
	[77063] = { config_id = 77063, monster_id = 26090801, pos = { x = -316.631, y = 220.204, z = 3613.008 }, rot = { x = 0.000, y = 194.732, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 103, area_id = 29 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[77001] = { config_id = 77001, gadget_id = 70310205, pos = { x = -207.010, y = 226.000, z = 3520.780 }, rot = { x = 0.000, y = 321.000, z = 0.000 }, level = 27, area_id = 29 },
	[77002] = { config_id = 77002, gadget_id = 70220104, pos = { x = -215.176, y = 225.990, z = 3529.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	[77003] = { config_id = 77003, gadget_id = 70220104, pos = { x = -219.606, y = 227.133, z = 3534.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	[77004] = { config_id = 77004, gadget_id = 70220104, pos = { x = -293.949, y = 233.831, z = 3475.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	[77005] = { config_id = 77005, gadget_id = 70220104, pos = { x = -219.737, y = 231.822, z = 3581.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	[77006] = { config_id = 77006, gadget_id = 70220104, pos = { x = -231.482, y = 233.979, z = 3599.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	[77007] = { config_id = 77007, gadget_id = 70220104, pos = { x = -253.201, y = 227.864, z = 3601.622 }, rot = { x = 0.000, y = 107.851, z = 0.000 }, level = 27, area_id = 29 },
	[77008] = { config_id = 77008, gadget_id = 70220104, pos = { x = -248.591, y = 243.193, z = 3470.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	[77009] = { config_id = 77009, gadget_id = 70220104, pos = { x = -324.573, y = 232.510, z = 3566.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	[77010] = { config_id = 77010, gadget_id = 70220104, pos = { x = -317.685, y = 227.789, z = 3519.470 }, rot = { x = 7.164, y = 276.226, z = 351.898 }, level = 27, area_id = 29 },
	[77011] = { config_id = 77011, gadget_id = 70220104, pos = { x = -214.704, y = 228.941, z = 3572.087 }, rot = { x = 0.000, y = 130.145, z = 0.000 }, level = 27, area_id = 29 },
	[77012] = { config_id = 77012, gadget_id = 70220104, pos = { x = -306.773, y = 228.358, z = 3492.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	[77013] = { config_id = 77013, gadget_id = 70220104, pos = { x = -273.764, y = 240.769, z = 3474.805 }, rot = { x = 357.728, y = 197.015, z = 338.001 }, level = 27, area_id = 29 },
	[77014] = { config_id = 77014, gadget_id = 70220104, pos = { x = -238.461, y = 238.310, z = 3474.357 }, rot = { x = 5.087, y = 57.014, z = 359.544 }, level = 27, area_id = 29 },
	[77015] = { config_id = 77015, gadget_id = 70220104, pos = { x = -211.949, y = 232.158, z = 3481.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	[77016] = { config_id = 77016, gadget_id = 70220104, pos = { x = -202.728, y = 227.568, z = 3502.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	[77017] = { config_id = 77017, gadget_id = 70220105, pos = { x = -324.425, y = 228.718, z = 3568.890 }, rot = { x = 348.284, y = 203.992, z = 2.709 }, level = 27, area_id = 29 },
	[77018] = { config_id = 77018, gadget_id = 70220105, pos = { x = -207.495, y = 228.521, z = 3492.632 }, rot = { x = 352.293, y = 200.566, z = 355.233 }, level = 27, area_id = 29 },
	[77019] = { config_id = 77019, gadget_id = 70220105, pos = { x = -225.241, y = 235.561, z = 3474.430 }, rot = { x = 0.000, y = 234.041, z = 0.000 }, level = 27, area_id = 29 },
	[77022] = { config_id = 77022, gadget_id = 70211021, pos = { x = -207.098, y = 226.310, z = 3521.022 }, rot = { x = 357.929, y = 140.471, z = 1.708 }, level = 26, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 29 },
	[77024] = { config_id = 77024, gadget_id = 70220103, pos = { x = -324.594, y = 232.486, z = 3566.132 }, rot = { x = 352.349, y = 146.078, z = 5.117 }, level = 27, area_id = 29 },
	-- 挂icon用的
	[77026] = { config_id = 77026, gadget_id = 70950145, pos = { x = -206.643, y = 226.394, z = 3520.362 }, rot = { x = 0.000, y = 332.098, z = 0.000 }, level = 27, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 29 },
	[77028] = { config_id = 77028, gadget_id = 70220105, pos = { x = -261.145, y = 244.571, z = 3466.869 }, rot = { x = 1.544, y = 267.580, z = 336.973 }, level = 27, area_id = 29 },
	[77032] = { config_id = 77032, gadget_id = 70310148, pos = { x = -205.131, y = 226.210, z = 3518.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	-- 挂按钮用的
	[77034] = { config_id = 77034, gadget_id = 70950145, pos = { x = -205.476, y = 227.950, z = 3518.885 }, rot = { x = 0.000, y = 321.000, z = 0.000 }, level = 27, worktop_config = { init_options = { 758 } }, area_id = 29 },
	[77039] = { config_id = 77039, gadget_id = 70220105, pos = { x = -306.956, y = 228.996, z = 3481.480 }, rot = { x = 346.766, y = 220.950, z = 341.242 }, level = 27, area_id = 29 },
	[77041] = { config_id = 77041, gadget_id = 70220103, pos = { x = -302.120, y = 226.164, z = 3592.485 }, rot = { x = 352.349, y = 146.078, z = 5.117 }, level = 27, area_id = 29 },
	[77042] = { config_id = 77042, gadget_id = 70220105, pos = { x = -283.740, y = 223.439, z = 3604.430 }, rot = { x = 0.364, y = 244.084, z = 6.131 }, level = 27, area_id = 29 },
	[77046] = { config_id = 77046, gadget_id = 70220103, pos = { x = -317.614, y = 229.357, z = 3519.341 }, rot = { x = 0.219, y = 183.075, z = 4.187 }, level = 27, area_id = 29 },
	[77061] = { config_id = 77061, gadget_id = 70220105, pos = { x = -215.757, y = 226.803, z = 3552.207 }, rot = { x = 0.000, y = 280.921, z = 0.000 }, level = 27, area_id = 29 }
}

-- 区域
regions = {
	[77021] = { config_id = 77021, shape = RegionShape.SPHERE, radius = 120, pos = { x = -244.703, y = 228.070, z = 3522.603 }, area_id = 29 },
	[77025] = { config_id = 77025, shape = RegionShape.SPHERE, radius = 5, pos = { x = -231.348, y = 234.012, z = 3599.355 }, area_id = 29 },
	[77053] = { config_id = 77053, shape = RegionShape.SPHERE, radius = 7, pos = { x = -284.046, y = 238.801, z = 3476.302 }, area_id = 29 }
}

-- 触发器
triggers = {
	{ config_id = 1077025, name = "ENTER_REGION_77025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_77025", action = "action_EVENT_ENTER_REGION_77025" },
	{ config_id = 1077053, name = "ENTER_REGION_77053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_77053", action = "action_EVENT_ENTER_REGION_77053" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 77037, monster_id = 26090201, pos = { x = -311.076, y = 224.819, z = 3502.073 }, rot = { x = 0.000, y = 36.009, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1019 }, pose_id = 101, area_id = 29 }
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
		gadgets = { 77001 },
		regions = { 77021 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 77020, 77023, 77027, 77029, 77030, 77031, 77033, 77038, 77040, 77045, 77048, 77062, 77063 },
		gadgets = { 77002, 77003, 77004, 77005, 77006, 77007, 77008, 77009, 77010, 77011, 77012, 77013, 77014, 77015, 77016, 77017, 77018, 77019, 77024, 77028, 77039, 77041, 77042, 77046, 77061 },
		regions = { 77025, 77053 },
		triggers = { "ENTER_REGION_77025", "ENTER_REGION_77053" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 77022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 77035, 77036, 77043, 77047, 77051, 77052 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 77026, 77032, 77034 },
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
function condition_EVENT_ENTER_REGION_77025(context, evt)
	if evt.param1 ~= 77025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_77025(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 77036, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 77035, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 77047, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 77043, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_77053(context, evt)
	if evt.param1 ~= 77053 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_77053(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 77051, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 77052, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/Dreamland"