-- 基础信息
local base_info = {
	group_id = 133303299
}

-- Trigger变量
local defs = {
	gadget_CoreID = 299005,
	monster_BossID = 299002,
	gadget_Point_1 = 299006,
	gadget_Point_2 = 299007,
	gadget_Point_3 = 299008,
	point_camera = 299001,
	gadget_lookEntity = 299005,
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
	[299002] = { config_id = 299002, monster_id = 22050201, pos = { x = -1298.454, y = 268.013, z = 3656.790 }, rot = { x = 0.000, y = 143.140, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[299028] = { config_id = 299028, monster_id = 20010701, pos = { x = -1298.040, y = 264.232, z = 3647.409 }, rot = { x = 0.000, y = 352.456, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[299032] = { config_id = 299032, monster_id = 20010601, pos = { x = -1293.524, y = 263.822, z = 3655.924 }, rot = { x = 0.000, y = 256.853, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[299003] = { config_id = 299003, gadget_id = 70310197, pos = { x = -1308.814, y = 269.448, z = 3660.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[299004] = { config_id = 299004, gadget_id = 70211111, pos = { x = -1295.805, y = 264.320, z = 3655.375 }, rot = { x = 18.557, y = 131.961, z = 3.834 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[299005] = { config_id = 299005, gadget_id = 70310193, pos = { x = -1296.711, y = 264.016, z = 3653.146 }, rot = { x = 348.007, y = 358.227, z = 354.815 }, level = 30, persistent = true, area_id = 23 },
	-- 23
	[299006] = { config_id = 299006, gadget_id = 70310195, pos = { x = -1267.648, y = 270.604, z = 3629.964 }, rot = { x = 337.696, y = 346.293, z = 191.411 }, level = 30, persistent = true, area_id = 23 },
	-- 21
	[299007] = { config_id = 299007, gadget_id = 70310195, pos = { x = -1312.774, y = 282.008, z = 3649.191 }, rot = { x = 6.300, y = 240.884, z = 230.082 }, level = 30, persistent = true, area_id = 23 },
	-- 22
	[299008] = { config_id = 299008, gadget_id = 70310195, pos = { x = -1285.928, y = 272.318, z = 3668.639 }, rot = { x = 40.302, y = 154.725, z = 256.858 }, level = 30, persistent = true, area_id = 23 },
	[299009] = { config_id = 299009, gadget_id = 70310192, pos = { x = -1306.870, y = 269.735, z = 3640.881 }, rot = { x = 308.335, y = 351.641, z = 89.439 }, level = 30, area_id = 23 },
	[299010] = { config_id = 299010, gadget_id = 70310192, pos = { x = -1289.076, y = 274.675, z = 3669.460 }, rot = { x = 0.000, y = 186.243, z = 0.000 }, level = 30, area_id = 23 },
	[299011] = { config_id = 299011, gadget_id = 70310192, pos = { x = -1293.024, y = 263.536, z = 3637.355 }, rot = { x = 270.256, y = 139.894, z = 180.000 }, level = 30, area_id = 23 },
	[299012] = { config_id = 299012, gadget_id = 70310191, pos = { x = -1309.070, y = 272.340, z = 3674.203 }, rot = { x = 0.000, y = 167.350, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[299013] = { config_id = 299013, gadget_id = 70310197, pos = { x = -1308.269, y = 272.928, z = 3674.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[299015] = { config_id = 299015, gadget_id = 70310197, pos = { x = -1297.016, y = 266.355, z = 3660.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[299016] = { config_id = 299016, gadget_id = 70310197, pos = { x = -1286.982, y = 262.024, z = 3653.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[299017] = { config_id = 299017, gadget_id = 70310198, pos = { x = -1260.878, y = 250.287, z = 3622.089 }, rot = { x = 0.000, y = 73.000, z = 0.000 }, level = 30, area_id = 23 },
	[299018] = { config_id = 299018, gadget_id = 70310198, pos = { x = -1313.643, y = 270.856, z = 3662.494 }, rot = { x = 6.234, y = 82.549, z = 349.537 }, level = 30, area_id = 23 },
	[299019] = { config_id = 299019, gadget_id = 70310197, pos = { x = -1294.833, y = 263.767, z = 3648.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[299021] = { config_id = 299021, gadget_id = 70310196, pos = { x = -1298.793, y = 266.047, z = 3652.602 }, rot = { x = 314.434, y = 262.136, z = 5.853 }, level = 30, persistent = true, area_id = 23 },
	[299022] = { config_id = 299022, gadget_id = 70290513, pos = { x = -1295.924, y = 265.160, z = 3654.595 }, rot = { x = 339.798, y = 36.330, z = 357.319 }, level = 30, persistent = true, area_id = 23 },
	[299023] = { config_id = 299023, gadget_id = 70310196, pos = { x = -1294.702, y = 264.778, z = 3652.188 }, rot = { x = 353.902, y = 131.459, z = 357.953 }, level = 30, persistent = true, area_id = 23 },
	[299024] = { config_id = 299024, gadget_id = 70310197, pos = { x = -1294.833, y = 263.767, z = 3648.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[299029] = { config_id = 299029, gadget_id = 70290491, pos = { x = -1296.694, y = 264.194, z = 3653.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	[299035] = { config_id = 299035, gadget_id = 70310198, pos = { x = -1302.600, y = 267.000, z = 3635.100 }, rot = { x = 0.000, y = 64.058, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1299014, name = "ANY_MONSTER_DIE_299014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_299014", action = "action_EVENT_ANY_MONSTER_DIE_299014" },
	{ config_id = 1299020, name = "MONSTER_BATTLE_299020", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_299020", action = "action_EVENT_MONSTER_BATTLE_299020" },
	-- 节点死对应特效消失
	{ config_id = 1299025, name = "ANY_GADGET_DIE_299025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_299025", action = "action_EVENT_ANY_GADGET_DIE_299025" },
	-- 节点死对应特效消失
	{ config_id = 1299026, name = "ANY_GADGET_DIE_299026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_299026", action = "action_EVENT_ANY_GADGET_DIE_299026" },
	-- 节点死对应特效消失
	{ config_id = 1299027, name = "ANY_GADGET_DIE_299027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_299027", action = "action_EVENT_ANY_GADGET_DIE_299027" },
	-- 核心消失刷宝箱
	{ config_id = 1299030, name = "ANY_GADGET_DIE_299030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_299030", action = "action_EVENT_ANY_GADGET_DIE_299030" },
	-- 核心交互播镜头
	{ config_id = 1299031, name = "LUA_NOTIFY_299031", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_299031" }
}

-- 点位
points = {
	[299001] = { config_id = 299001, pos = { x = -1264.168, y = 264.453, z = 3636.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		gadgets = { 299005, 299006, 299007, 299008, 299012, 299013, 299017, 299018, 299021, 299022, 299023, 299029, 299035 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_299025", "ANY_GADGET_DIE_299026", "ANY_GADGET_DIE_299027", "ANY_GADGET_DIE_299030", "LUA_NOTIFY_299031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 299002, 299028, 299032 },
		gadgets = { 299005, 299009, 299010, 299011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_299014", "MONSTER_BATTLE_299020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 299004, 299012, 299017, 299018, 299035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 299004 },
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
function condition_EVENT_ANY_MONSTER_DIE_299014(context, evt)
	--判断死亡怪物的configid是否为 299002
	if evt.param1 ~= 299002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_299014(context, evt)
	-- 将configid为 299012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 299012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_299020(context, evt)
	if 299002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_299020(context, evt)
	-- 将configid为 299012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 299012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为299003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 299003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为299015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 299015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为299016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 299016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为299019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 299019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为299024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 299024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_299025(context, evt)
	if 299006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_299025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 299023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_299026(context, evt)
	if 299007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_299026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 299021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_299027(context, evt)
	if 299008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_299027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 299022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_299030(context, evt)
	if 299005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_299030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303299, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_299031(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"