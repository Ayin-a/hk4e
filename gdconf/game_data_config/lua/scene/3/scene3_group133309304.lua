-- 基础信息
local base_info = {
	group_id = 133309304
}

-- Trigger变量
local defs = {
	gadget_CoreID = 304005,
	monster_BossID = 304002,
	gadget_Point_1 = 304006,
	gadget_Point_2 = 304007,
	gadget_Point_3 = 304008,
	point_camera = 304034,
	gadget_lookEntity = 304005,
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
	[304002] = { config_id = 304002, monster_id = 26120301, pos = { x = -2386.034, y = -53.462, z = 5907.519 }, rot = { x = 0.000, y = 293.257, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 27 },
	[304023] = { config_id = 304023, monster_id = 26090101, pos = { x = -2389.019, y = -53.050, z = 5915.798 }, rot = { x = 0.000, y = 91.659, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 27 },
	[304024] = { config_id = 304024, monster_id = 26090101, pos = { x = -2381.200, y = -53.035, z = 5905.974 }, rot = { x = 0.000, y = 303.549, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 27 },
	[304025] = { config_id = 304025, monster_id = 26090101, pos = { x = -2383.633, y = -52.585, z = 5913.109 }, rot = { x = 0.000, y = 151.916, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[304004] = { config_id = 304004, gadget_id = 70211021, pos = { x = -2385.903, y = -53.180, z = 5911.373 }, rot = { x = 8.671, y = 253.741, z = 1.169 }, level = 26, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	[304005] = { config_id = 304005, gadget_id = 70310193, pos = { x = -2382.273, y = -52.689, z = 5910.099 }, rot = { x = 0.000, y = 187.840, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[304006] = { config_id = 304006, gadget_id = 70310195, pos = { x = -2402.624, y = -53.822, z = 5903.348 }, rot = { x = 349.557, y = 290.708, z = 352.460 }, level = 32, area_id = 27 },
	[304007] = { config_id = 304007, gadget_id = 70310195, pos = { x = -2396.550, y = -53.925, z = 5939.944 }, rot = { x = 15.701, y = 79.707, z = 5.786 }, level = 32, area_id = 27 },
	[304008] = { config_id = 304008, gadget_id = 70310195, pos = { x = -2355.400, y = -51.902, z = 5904.075 }, rot = { x = 327.150, y = 61.853, z = 3.804 }, level = 32, area_id = 27 },
	[304009] = { config_id = 304009, gadget_id = 70310192, pos = { x = -2376.642, y = -48.456, z = 5917.087 }, rot = { x = 0.000, y = 54.812, z = 0.000 }, level = 32, area_id = 27 },
	[304011] = { config_id = 304011, gadget_id = 70310192, pos = { x = -2364.269, y = -46.140, z = 5911.197 }, rot = { x = 322.168, y = 141.447, z = 346.851 }, level = 32, area_id = 27 },
	[304012] = { config_id = 304012, gadget_id = 70310191, pos = { x = -2392.443, y = -53.478, z = 5918.712 }, rot = { x = 352.380, y = 106.847, z = 2.091 }, level = 32, area_id = 27 },
	[304013] = { config_id = 304013, gadget_id = 70310197, pos = { x = -2386.260, y = -51.771, z = 5889.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	[304014] = { config_id = 304014, gadget_id = 70310197, pos = { x = -2358.416, y = -52.433, z = 5906.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	[304015] = { config_id = 304015, gadget_id = 70310197, pos = { x = -2355.219, y = -52.956, z = 5938.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	[304016] = { config_id = 304016, gadget_id = 70310197, pos = { x = -2396.336, y = -52.336, z = 5942.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	[304017] = { config_id = 304017, gadget_id = 70330435, pos = { x = -2385.330, y = -52.548, z = 5921.418 }, rot = { x = 0.000, y = 297.318, z = 0.000 }, level = 32, area_id = 27 },
	[304020] = { config_id = 304020, gadget_id = 70310196, pos = { x = -2381.543, y = -51.178, z = 5909.475 }, rot = { x = 349.108, y = 109.714, z = 358.353 }, level = 32, area_id = 27 },
	[304021] = { config_id = 304021, gadget_id = 70310196, pos = { x = -2382.398, y = -51.328, z = 5909.918 }, rot = { x = 0.000, y = 253.537, z = 0.000 }, level = 32, area_id = 27 },
	[304022] = { config_id = 304022, gadget_id = 70290513, pos = { x = -2382.186, y = -51.210, z = 5910.537 }, rot = { x = 351.759, y = 341.131, z = 359.602 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心消失刷宝箱
	{ config_id = 1304027, name = "ANY_GADGET_DIE_304027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_304027", action = "action_EVENT_ANY_GADGET_DIE_304027" },
	-- 节点死对应特效消失
	{ config_id = 1304028, name = "GADGET_STATE_CHANGE_304028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304028", action = "action_EVENT_GADGET_STATE_CHANGE_304028" },
	-- 节点死对应特效消失
	{ config_id = 1304029, name = "GADGET_STATE_CHANGE_304029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304029", action = "action_EVENT_GADGET_STATE_CHANGE_304029" },
	-- 节点死对应特效消失
	{ config_id = 1304030, name = "GADGET_STATE_CHANGE_304030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304030", action = "action_EVENT_GADGET_STATE_CHANGE_304030" },
	-- 核心交互播镜头
	{ config_id = 1304031, name = "LUA_NOTIFY_304031", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_304031" }
}

-- 点位
points = {
	-- 相机点位
	[304034] = { config_id = 304034, pos = { x = -2396.775, y = -47.359, z = 5892.238 }, rot = { x = 0.000, y = 46.865, z = 0.000 }, area_id = 27 }
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
		gadgets = { 304005, 304006, 304007, 304008, 304009, 304011, 304012, 304013, 304014, 304015, 304016, 304017, 304020, 304021, 304022 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_304027", "GADGET_STATE_CHANGE_304028", "GADGET_STATE_CHANGE_304029", "GADGET_STATE_CHANGE_304030", "LUA_NOTIFY_304031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 304002, 304023, 304024, 304025 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 304004, 304012, 304017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 304004 },
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
function condition_EVENT_ANY_GADGET_DIE_304027(context, evt)
	if 304005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_304027(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309304, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_304028(context, evt)
	if 304008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 304020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_304029(context, evt)
	if 304006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 304021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_304030(context, evt)
	if 304007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 304022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_304031(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"