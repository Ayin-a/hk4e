-- 基础信息
local base_info = {
	group_id = 133302249
}

-- Trigger变量
local defs = {
	gadget_CoreID = 249005,
	monster_BossID = 249002,
	gadget_Point_1 = 249006,
	gadget_Point_2 = 249007,
	gadget_Point_3 = 249008,
	point_camera = 249001,
	gadget_lookEntity = 249005,
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
	[249002] = { config_id = 249002, monster_id = 24030101, pos = { x = -660.726, y = 215.873, z = 3005.940 }, rot = { x = 0.000, y = 359.778, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[249003] = { config_id = 249003, gadget_id = 70310198, pos = { x = -690.418, y = 215.534, z = 2994.330 }, rot = { x = 354.949, y = 316.005, z = 359.912 }, level = 27, area_id = 24 },
	[249004] = { config_id = 249004, gadget_id = 70211111, pos = { x = -669.334, y = 214.550, z = 3001.421 }, rot = { x = 8.654, y = 108.805, z = 357.184 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	[249005] = { config_id = 249005, gadget_id = 70310193, pos = { x = -670.211, y = 216.483, z = 3008.312 }, rot = { x = 341.009, y = 359.721, z = 355.865 }, level = 33, persistent = true, area_id = 24 },
	[249006] = { config_id = 249006, gadget_id = 70310195, pos = { x = -688.333, y = 217.599, z = 3005.807 }, rot = { x = 17.607, y = 202.888, z = 13.543 }, level = 33, persistent = true, area_id = 22 },
	[249007] = { config_id = 249007, gadget_id = 70310195, pos = { x = -647.453, y = 216.772, z = 3004.557 }, rot = { x = 351.635, y = 43.880, z = 9.345 }, level = 33, persistent = true, area_id = 24 },
	[249008] = { config_id = 249008, gadget_id = 70310195, pos = { x = -655.813, y = 214.799, z = 2985.541 }, rot = { x = 347.043, y = 226.893, z = 356.493 }, level = 33, persistent = true, area_id = 24 },
	[249009] = { config_id = 249009, gadget_id = 70310198, pos = { x = -639.147, y = 212.517, z = 2985.254 }, rot = { x = 4.469, y = 162.857, z = 2.358 }, level = 27, area_id = 24 },
	[249010] = { config_id = 249010, gadget_id = 70310191, pos = { x = -665.911, y = 215.291, z = 2991.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[249013] = { config_id = 249013, gadget_id = 70310197, pos = { x = -672.833, y = 215.303, z = 2993.070 }, rot = { x = 352.888, y = 359.778, z = 3.577 }, level = 33, state = GadgetState.GearStart, area_id = 24 },
	[249014] = { config_id = 249014, gadget_id = 70310197, pos = { x = -664.391, y = 219.360, z = 3016.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	[249015] = { config_id = 249015, gadget_id = 70310197, pos = { x = -653.297, y = 216.913, z = 3009.009 }, rot = { x = 352.888, y = 359.778, z = 3.577 }, level = 33, state = GadgetState.GearStart, area_id = 24 },
	[249016] = { config_id = 249016, gadget_id = 70310197, pos = { x = -659.582, y = 214.413, z = 2992.872 }, rot = { x = 352.888, y = 359.778, z = 3.577 }, level = 33, state = GadgetState.GearStart, area_id = 24 },
	[249020] = { config_id = 249020, gadget_id = 70310196, pos = { x = -671.615, y = 219.505, z = 3006.747 }, rot = { x = 0.632, y = 272.681, z = 16.392 }, level = 33, persistent = true, area_id = 24 },
	[249021] = { config_id = 249021, gadget_id = 70310196, pos = { x = -666.428, y = 219.731, z = 3007.833 }, rot = { x = 2.897, y = 103.061, z = 0.000 }, level = 33, persistent = true, area_id = 24 },
	[249022] = { config_id = 249022, gadget_id = 70290513, pos = { x = -668.079, y = 219.986, z = 3006.447 }, rot = { x = 19.781, y = 155.735, z = 357.476 }, level = 33, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心消失刷宝箱
	{ config_id = 1249027, name = "ANY_GADGET_DIE_249027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_249027", action = "action_EVENT_ANY_GADGET_DIE_249027" },
	-- 节点死对应特效消失
	{ config_id = 1249028, name = "GADGET_STATE_CHANGE_249028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_249028", action = "action_EVENT_GADGET_STATE_CHANGE_249028" },
	-- 节点死对应特效消失
	{ config_id = 1249029, name = "GADGET_STATE_CHANGE_249029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_249029", action = "action_EVENT_GADGET_STATE_CHANGE_249029" },
	-- 节点死对应特效消失
	{ config_id = 1249030, name = "GADGET_STATE_CHANGE_249030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_249030", action = "action_EVENT_GADGET_STATE_CHANGE_249030" },
	-- 核心交互播镜头
	{ config_id = 1249032, name = "LUA_NOTIFY_249032", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_249032" }
}

-- 点位
points = {
	[249001] = { config_id = 249001, pos = { x = -648.000, y = 228.000, z = 2997.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 24 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 249011, shape = RegionShape.SPHERE, radius = 7, pos = { x = -666.151, y = 215.297, z = 2991.732 }, area_id = 24 }
	},
	triggers = {
		{ config_id = 1249011, name = "ENTER_REGION_249011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_249011" },
		{ config_id = 1249012, name = "TIME_AXIS_PASS_249012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_249012", action = "action_EVENT_TIME_AXIS_PASS_249012", trigger_count = 0 },
		{ config_id = 1249017, name = "TIME_AXIS_PASS_249017", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_249017", action = "action_EVENT_TIME_AXIS_PASS_249017", trigger_count = 0 }
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
		gadgets = { 249003, 249005, 249006, 249007, 249008, 249009, 249010, 249020, 249021, 249022 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_249027", "GADGET_STATE_CHANGE_249028", "GADGET_STATE_CHANGE_249029", "GADGET_STATE_CHANGE_249030", "LUA_NOTIFY_249032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 249002 },
		gadgets = { 249014, 249015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 249004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 249004 },
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
function condition_EVENT_ANY_GADGET_DIE_249027(context, evt)
	if 249005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_249027(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302249, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_249028(context, evt)
	if 249006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_249028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 249020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_249029(context, evt)
	if 249007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_249029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 249021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_249030(context, evt)
	if 249008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_249030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 249022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_249032(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"