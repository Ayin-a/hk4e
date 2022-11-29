-- 基础信息
local base_info = {
	group_id = 133303287
}

-- Trigger变量
local defs = {
	gadget_CoreID = 287005,
	monster_BossID = 287002,
	gadget_Point_1 = 287006,
	gadget_Point_2 = 287007,
	gadget_Point_3 = 287008,
	point_camera = 287001,
	gadget_lookEntity = 287005,
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
    is_allow_input = true,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[287002] = { config_id = 287002, monster_id = 24030101, pos = { x = -1297.054, y = 185.997, z = 3296.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[287004] = { config_id = 287004, gadget_id = 70211111, pos = { x = -1298.394, y = 184.926, z = 3300.827 }, rot = { x = 359.878, y = 169.258, z = 354.571 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[287005] = { config_id = 287005, gadget_id = 70310193, pos = { x = -1303.160, y = 185.699, z = 3291.910 }, rot = { x = 1.379, y = 350.000, z = 4.000 }, level = 30, persistent = true, area_id = 23 },
	-- 22
	[287006] = { config_id = 287006, gadget_id = 70310195, pos = { x = -1314.016, y = 193.700, z = 3308.835 }, rot = { x = 9.340, y = 86.020, z = 355.597 }, level = 30, persistent = true, area_id = 23 },
	-- 23
	[287007] = { config_id = 287007, gadget_id = 70310195, pos = { x = -1285.787, y = 190.542, z = 3280.515 }, rot = { x = 343.652, y = 39.093, z = 3.496 }, level = 30, persistent = true, area_id = 23 },
	-- 21
	[287008] = { config_id = 287008, gadget_id = 70310195, pos = { x = -1297.866, y = 189.232, z = 3276.014 }, rot = { x = 340.000, y = 150.000, z = 12.000 }, level = 30, persistent = true, area_id = 23 },
	[287009] = { config_id = 287009, gadget_id = 70310192, pos = { x = -1306.249, y = 184.948, z = 3317.902 }, rot = { x = 0.000, y = 142.321, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[287011] = { config_id = 287011, gadget_id = 70310192, pos = { x = -1283.825, y = 189.150, z = 3311.429 }, rot = { x = 311.495, y = 297.121, z = 2.651 }, level = 30, persistent = true, area_id = 23 },
	[287012] = { config_id = 287012, gadget_id = 70310191, pos = { x = -1283.400, y = 189.414, z = 3297.550 }, rot = { x = 0.000, y = 271.756, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[287013] = { config_id = 287013, gadget_id = 70310197, pos = { x = -1289.601, y = 191.673, z = 3266.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[287014] = { config_id = 287014, gadget_id = 70310197, pos = { x = -1300.562, y = 188.228, z = 3282.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[287015] = { config_id = 287015, gadget_id = 70310197, pos = { x = -1275.411, y = 195.981, z = 3291.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[287016] = { config_id = 287016, gadget_id = 70310197, pos = { x = -1302.461, y = 187.039, z = 3323.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[287017] = { config_id = 287017, gadget_id = 70310198, pos = { x = -1283.279, y = 182.067, z = 3326.088 }, rot = { x = 0.000, y = 2.784, z = 0.000 }, level = 30, area_id = 23 },
	[287018] = { config_id = 287018, gadget_id = 70310198, pos = { x = -1289.103, y = 183.553, z = 3308.115 }, rot = { x = 10.445, y = 55.107, z = 0.098 }, level = 30, area_id = 23 },
	[287019] = { config_id = 287019, gadget_id = 70330197, pos = { x = -1304.319, y = 182.811, z = 3310.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[287021] = { config_id = 287021, gadget_id = 70290513, pos = { x = -1302.456, y = 187.883, z = 3290.442 }, rot = { x = 0.150, y = 173.720, z = 1.167 }, level = 30, persistent = true, area_id = 23 },
	[287022] = { config_id = 287022, gadget_id = 70310196, pos = { x = -1305.203, y = 186.925, z = 3294.630 }, rot = { x = 329.917, y = 331.556, z = 0.251 }, level = 30, persistent = true, area_id = 23 },
	[287023] = { config_id = 287023, gadget_id = 70310196, pos = { x = -1301.617, y = 187.408, z = 3290.847 }, rot = { x = 352.384, y = 126.162, z = 2.128 }, level = 30, persistent = true, area_id = 23 },
	[287028] = { config_id = 287028, gadget_id = 70310197, pos = { x = -1302.344, y = 187.284, z = 3285.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[287029] = { config_id = 287029, gadget_id = 70310197, pos = { x = -1297.458, y = 186.502, z = 3287.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[287030] = { config_id = 287030, gadget_id = 70310197, pos = { x = -1296.406, y = 185.742, z = 3292.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[287031] = { config_id = 287031, gadget_id = 70290491, pos = { x = -1303.160, y = 185.699, z = 3291.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	[287034] = { config_id = 287034, gadget_id = 70310192, pos = { x = -1313.884, y = 194.636, z = 3310.490 }, rot = { x = 332.164, y = 104.775, z = 9.998 }, level = 30, persistent = true, area_id = 23 },
	[287035] = { config_id = 287035, gadget_id = 70310197, pos = { x = -1292.238, y = 186.214, z = 3293.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[287036] = { config_id = 287036, gadget_id = 70220020, pos = { x = -1313.409, y = 193.400, z = 3307.583 }, rot = { x = 35.586, y = 99.732, z = 10.921 }, level = 30, persistent = true, area_id = 23 },
	[287037] = { config_id = 287037, gadget_id = 70310192, pos = { x = -1295.453, y = 186.954, z = 3302.951 }, rot = { x = 11.088, y = 140.393, z = 134.069 }, level = 30, area_id = 23 },
	[287038] = { config_id = 287038, gadget_id = 70310191, pos = { x = -1300.500, y = 188.090, z = 3280.800 }, rot = { x = 0.000, y = 219.150, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[287043] = { config_id = 287043, gadget_id = 70310197, pos = { x = -1286.291, y = 174.416, z = 3345.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[287046] = { config_id = 287046, gadget_id = 70310197, pos = { x = -1295.539, y = 178.403, z = 3333.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[287047] = { config_id = 287047, gadget_id = 70310198, pos = { x = -1288.550, y = 191.220, z = 3268.200 }, rot = { x = 2.000, y = 280.000, z = 351.000 }, level = 30, area_id = 23 },
	[287048] = { config_id = 287048, gadget_id = 70330197, pos = { x = -1279.872, y = 182.781, z = 3325.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1287003, name = "MONSTER_BATTLE_287003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_287003", action = "action_EVENT_MONSTER_BATTLE_287003" },
	-- 节点死对应特效消失
	{ config_id = 1287025, name = "ANY_GADGET_DIE_287025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_287025", action = "action_EVENT_ANY_GADGET_DIE_287025" },
	-- 节点死对应特效消失
	{ config_id = 1287026, name = "ANY_GADGET_DIE_287026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_287026", action = "action_EVENT_ANY_GADGET_DIE_287026" },
	-- 节点死对应特效消失
	{ config_id = 1287027, name = "ANY_GADGET_DIE_287027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_287027", action = "action_EVENT_ANY_GADGET_DIE_287027" },
	-- 核心消失刷宝箱
	{ config_id = 1287032, name = "ANY_GADGET_DIE_287032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_287032", action = "action_EVENT_ANY_GADGET_DIE_287032" },
	-- 核心交互播镜头
	{ config_id = 1287033, name = "LUA_NOTIFY_287033", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_287033" }
}

-- 点位
points = {
	[287001] = { config_id = 287001, pos = { x = -1285.607, y = 207.132, z = 3276.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 287020, monster_id = 24020201, pos = { x = -1291.997, y = 181.920, z = 3289.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 100, area_id = 23 },
		{ config_id = 287024, monster_id = 24020201, pos = { x = -1301.104, y = 179.778, z = 3296.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 100, area_id = 23 }
	},
	triggers = {
		{ config_id = 1287010, name = "ANY_MONSTER_DIE_287010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_287010", action = "action_EVENT_ANY_MONSTER_DIE_287010" }
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
		gadgets = { 287005, 287006, 287007, 287008, 287012, 287017, 287018, 287019, 287021, 287022, 287023, 287031, 287034, 287036, 287038, 287047, 287048 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_287025", "ANY_GADGET_DIE_287026", "ANY_GADGET_DIE_287027", "ANY_GADGET_DIE_287032", "LUA_NOTIFY_287033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 287002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_287003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 287004, 287012, 287017, 287018, 287019, 287038, 287047 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 287004 },
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
function condition_EVENT_MONSTER_BATTLE_287003(context, evt)
	if 287002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_287003(context, evt)
	-- 创建id为287028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 287028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为287029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 287029 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为287030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 287030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为287035的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 287035 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为287037的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 287037 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_287025(context, evt)
	if 287006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_287025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_287026(context, evt)
	if 287007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_287026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_287027(context, evt)
	if 287008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_287027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_287032(context, evt)
	if 287005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_287032(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303287, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_287033(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"