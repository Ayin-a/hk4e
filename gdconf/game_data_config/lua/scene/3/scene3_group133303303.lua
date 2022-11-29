-- 基础信息
local base_info = {
	group_id = 133303303
}

-- Trigger变量
local defs = {
	gadget_CoreID = 303005,
	monster_BossID = 303002,
	gadget_Point_1 = 303006,
	gadget_Point_2 = 303007,
	gadget_Point_3 = 303008,
	point_camera = 303001,
	gadget_lookEntity = 303005,
	look_duration = 5
}

-- DEFS_MISCS
local RequireSuite = {} --死域玩法的初始suit。若不填或不注入，默认走init_config.suite

local DeathField ={
	CoreID = defs.gadget_CoreID,
	BossID = defs.monster_BossID,
	BossSuite = 2,
	EndSuite = 3,
	PointList = {defs.gadget_Point_1,defs.gadget_Point_2,defs.gadget_Point_3},
}

local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[303002] = { config_id = 303002, monster_id = 26120301, pos = { x = -1943.369, y = 219.632, z = 3267.278 }, rot = { x = 0.000, y = 259.037, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[303003] = { config_id = 303003, monster_id = 26090101, pos = { x = -1946.056, y = 219.869, z = 3266.974 }, rot = { x = 0.000, y = 70.191, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[303013] = { config_id = 303013, monster_id = 26090101, pos = { x = -1944.886, y = 220.390, z = 3269.591 }, rot = { x = 0.000, y = 70.191, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[303004] = { config_id = 303004, gadget_id = 70211111, pos = { x = -1946.946, y = 219.183, z = 3262.432 }, rot = { x = 11.840, y = 133.711, z = 359.116 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[303005] = { config_id = 303005, gadget_id = 70310193, pos = { x = -1948.730, y = 219.430, z = 3263.880 }, rot = { x = 0.000, y = 31.389, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[303006] = { config_id = 303006, gadget_id = 70310195, pos = { x = -1947.114, y = 225.015, z = 3283.378 }, rot = { x = 8.198, y = 190.477, z = 16.219 }, level = 30, persistent = true, area_id = 23 },
	[303007] = { config_id = 303007, gadget_id = 70310195, pos = { x = -1970.891, y = 227.696, z = 3266.421 }, rot = { x = 6.000, y = 130.000, z = 7.000 }, level = 30, persistent = true, area_id = 23 },
	[303008] = { config_id = 303008, gadget_id = 70310195, pos = { x = -1930.186, y = 217.551, z = 3260.075 }, rot = { x = 2.360, y = 116.221, z = 353.217 }, level = 30, persistent = true, area_id = 23 },
	[303011] = { config_id = 303011, gadget_id = 70310197, pos = { x = -1940.442, y = 220.454, z = 3271.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[303012] = { config_id = 303012, gadget_id = 70310191, pos = { x = -1937.220, y = 217.570, z = 3249.800 }, rot = { x = 0.000, y = 291.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[303014] = { config_id = 303014, gadget_id = 70310197, pos = { x = -1913.703, y = 211.817, z = 3291.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[303015] = { config_id = 303015, gadget_id = 70310197, pos = { x = -1931.730, y = 217.617, z = 3278.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[303016] = { config_id = 303016, gadget_id = 70310197, pos = { x = -1939.199, y = 223.617, z = 3278.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[303018] = { config_id = 303018, gadget_id = 70310198, pos = { x = -1932.462, y = 217.178, z = 3275.652 }, rot = { x = 0.000, y = 99.600, z = 0.000 }, level = 30, area_id = 23 },
	[303019] = { config_id = 303019, gadget_id = 70310197, pos = { x = -1941.982, y = 217.770, z = 3251.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[303020] = { config_id = 303020, gadget_id = 70310197, pos = { x = -1954.631, y = 220.730, z = 3254.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[303021] = { config_id = 303021, gadget_id = 70290513, pos = { x = -1948.646, y = 220.942, z = 3265.465 }, rot = { x = 343.935, y = 10.517, z = 356.308 }, level = 30, persistent = true, area_id = 23 },
	[303022] = { config_id = 303022, gadget_id = 70310196, pos = { x = -1951.139, y = 221.100, z = 3264.243 }, rot = { x = 335.120, y = 280.718, z = 349.880 }, level = 30, persistent = true, area_id = 23 },
	[303023] = { config_id = 303023, gadget_id = 70310196, pos = { x = -1946.749, y = 220.407, z = 3263.795 }, rot = { x = 6.393, y = 106.616, z = 4.959 }, level = 30, persistent = true, area_id = 23 },
	[303024] = { config_id = 303024, gadget_id = 70310197, pos = { x = -1958.543, y = 222.724, z = 3263.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[303028] = { config_id = 303028, gadget_id = 70310197, pos = { x = -1950.096, y = 222.798, z = 3275.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[303029] = { config_id = 303029, gadget_id = 70290491, pos = { x = -1948.730, y = 219.430, z = 3263.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	[303033] = { config_id = 303033, gadget_id = 70220003, pos = { x = -1929.665, y = 217.126, z = 3257.244 }, rot = { x = 351.385, y = 352.621, z = 355.764 }, level = 30, persistent = true, area_id = 23 },
	[303034] = { config_id = 303034, gadget_id = 70220003, pos = { x = -1932.476, y = 217.274, z = 3258.349 }, rot = { x = 354.789, y = 56.213, z = 353.850 }, level = 30, persistent = true, area_id = 23 },
	[303035] = { config_id = 303035, gadget_id = 70220003, pos = { x = -1927.651, y = 217.377, z = 3259.977 }, rot = { x = 6.712, y = 92.811, z = 350.621 }, level = 30, persistent = true, area_id = 23 },
	[303036] = { config_id = 303036, gadget_id = 70220003, pos = { x = -1929.496, y = 217.825, z = 3262.644 }, rot = { x = 357.557, y = 24.465, z = 358.889 }, level = 30, persistent = true, area_id = 23 },
	[303039] = { config_id = 303039, gadget_id = 70310198, pos = { x = -1961.090, y = 223.270, z = 3266.412 }, rot = { x = 3.199, y = 135.008, z = 3.540 }, level = 30, area_id = 23 },
	[303040] = { config_id = 303040, gadget_id = 70330216, pos = { x = -1951.761, y = 224.185, z = 3296.870 }, rot = { x = 0.000, y = 219.010, z = 0.000 }, level = 30, area_id = 23 },
	[303041] = { config_id = 303041, gadget_id = 70330216, pos = { x = -1943.240, y = 221.640, z = 3290.276 }, rot = { x = 0.000, y = 269.120, z = 0.000 }, level = 30, area_id = 23 },
	[303042] = { config_id = 303042, gadget_id = 70330216, pos = { x = -1945.987, y = 222.313, z = 3299.898 }, rot = { x = 0.000, y = 256.763, z = 0.000 }, level = 30, area_id = 23 },
	[303047] = { config_id = 303047, gadget_id = 70310197, pos = { x = -1966.279, y = 225.859, z = 3263.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1303009, name = "MONSTER_BATTLE_303009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_303009", action = "action_EVENT_MONSTER_BATTLE_303009" },
	-- 节点死对应特效消失
	{ config_id = 1303025, name = "ANY_GADGET_DIE_303025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_303025", action = "action_EVENT_ANY_GADGET_DIE_303025" },
	-- 节点死对应特效消失
	{ config_id = 1303026, name = "ANY_GADGET_DIE_303026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_303026", action = "action_EVENT_ANY_GADGET_DIE_303026" },
	-- 节点死对应特效消失
	{ config_id = 1303027, name = "ANY_GADGET_DIE_303027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_303027", action = "action_EVENT_ANY_GADGET_DIE_303027" },
	-- 核心消失刷宝箱
	{ config_id = 1303030, name = "ANY_GADGET_DIE_303030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_303030", action = "action_EVENT_ANY_GADGET_DIE_303030" },
	-- 核心交互播镜头
	{ config_id = 1303031, name = "LUA_NOTIFY_303031", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_303031" },
	-- 节点死伏击怪
	{ config_id = 1303037, name = "GADGET_STATE_CHANGE_303037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_303037", action = "action_EVENT_GADGET_STATE_CHANGE_303037" }
}

-- 点位
points = {
	[303001] = { config_id = 303001, pos = { x = -1972.376, y = 237.724, z = 3248.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1303010, name = "ANY_MONSTER_DIE_303010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_303010", action = "action_EVENT_ANY_MONSTER_DIE_303010" },
		{ config_id = 1303049, name = "GADGET_STATE_CHANGE_303049", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_303049", action = "action_EVENT_GADGET_STATE_CHANGE_303049" }
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
	end_suite = 3,
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
		gadgets = { 303005, 303006, 303007, 303008, 303012, 303014, 303015, 303016, 303018, 303021, 303022, 303023, 303029, 303033, 303034, 303035, 303036, 303039, 303040, 303041, 303042, 303047 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_303025", "ANY_GADGET_DIE_303026", "ANY_GADGET_DIE_303027", "ANY_GADGET_DIE_303030", "LUA_NOTIFY_303031", "GADGET_STATE_CHANGE_303037" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 303002, 303003, 303013 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_303009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 303004, 303012, 303018, 303039, 303040, 303041, 303042 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 303004 },
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
function condition_EVENT_MONSTER_BATTLE_303009(context, evt)
	if 303002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_303009(context, evt)
	-- 创建id为303011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 303011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为303019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 303019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为303020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 303020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为303024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 303024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为303028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 303028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_303025(context, evt)
	if 303006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_303025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 303021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_303026(context, evt)
	if 303007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_303026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 303022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_303027(context, evt)
	if 303008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_303027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 303023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_303030(context, evt)
	if 303005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_303030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303303, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_303031(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_303037(context, evt)
	if 303008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_303037(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303306, 3)
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"