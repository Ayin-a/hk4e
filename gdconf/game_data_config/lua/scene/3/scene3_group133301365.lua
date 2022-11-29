-- 基础信息
local base_info = {
	group_id = 133301365
}

-- Trigger变量
local defs = {
	gadget_CoreID = 365005,
	monster_BossID = 365002,
	gadget_Point_1 = 365006,
	gadget_Point_2 = 365007,
	gadget_Point_3 = 365008,
	point_camera = 365003,
	gadget_lookEntity = 365005,
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
    blend_type = 1,
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
	[365002] = { config_id = 365002, monster_id = 24030201, pos = { x = -845.968, y = 34.827, z = 3339.435 }, rot = { x = 0.000, y = 132.793, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[365011] = { config_id = 365011, monster_id = 24020101, pos = { x = -835.286, y = 37.372, z = 3352.426 }, rot = { x = 0.000, y = 141.202, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 100, area_id = 23 },
	[365016] = { config_id = 365016, monster_id = 24020101, pos = { x = -829.688, y = 30.016, z = 3334.985 }, rot = { x = 0.000, y = 181.374, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[365004] = { config_id = 365004, gadget_id = 70211131, pos = { x = -848.893, y = 35.173, z = 3340.739 }, rot = { x = 6.263, y = 129.328, z = 0.009 }, level = 26, drop_tag = "解谜超级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[365005] = { config_id = 365005, gadget_id = 70310193, pos = { x = -851.900, y = 36.096, z = 3343.219 }, rot = { x = 6.297, y = 97.377, z = 350.669 }, level = 30, persistent = true, area_id = 23 },
	[365006] = { config_id = 365006, gadget_id = 70310195, pos = { x = -836.310, y = 54.435, z = 3322.372 }, rot = { x = 5.736, y = 215.639, z = 10.957 }, level = 30, persistent = true, area_id = 23 },
	[365007] = { config_id = 365007, gadget_id = 70310195, pos = { x = -840.921, y = 36.993, z = 3318.587 }, rot = { x = 0.325, y = 21.259, z = 359.166 }, level = 30, persistent = true, area_id = 23 },
	[365008] = { config_id = 365008, gadget_id = 70310195, pos = { x = -829.687, y = 44.791, z = 3337.930 }, rot = { x = 11.749, y = 315.156, z = 348.259 }, level = 30, persistent = true, area_id = 23 },
	[365009] = { config_id = 365009, gadget_id = 70310192, pos = { x = -843.200, y = 42.192, z = 3330.571 }, rot = { x = 47.455, y = 41.736, z = 46.532 }, level = 30, persistent = true, area_id = 23 },
	[365010] = { config_id = 365010, gadget_id = 70310192, pos = { x = -846.354, y = 44.897, z = 3342.590 }, rot = { x = 38.436, y = 182.757, z = -0.001 }, level = 30, persistent = true, area_id = 23 },
	[365012] = { config_id = 365012, gadget_id = 70310191, pos = { x = -841.479, y = 33.968, z = 3327.941 }, rot = { x = 0.000, y = 52.872, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365013] = { config_id = 365013, gadget_id = 70310197, pos = { x = -842.006, y = 33.094, z = 3334.236 }, rot = { x = 0.000, y = 313.878, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[365014] = { config_id = 365014, gadget_id = 70310197, pos = { x = -844.658, y = 34.660, z = 3342.001 }, rot = { x = 0.000, y = 3.070, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[365015] = { config_id = 365015, gadget_id = 70310197, pos = { x = -850.330, y = 35.053, z = 3338.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[365017] = { config_id = 365017, gadget_id = 70310198, pos = { x = -826.164, y = 29.126, z = 3325.406 }, rot = { x = 6.402, y = 101.760, z = 8.537 }, level = 30, area_id = 23 },
	[365018] = { config_id = 365018, gadget_id = 70310198, pos = { x = -846.847, y = 36.299, z = 3346.577 }, rot = { x = 0.474, y = 245.601, z = 18.021 }, level = 30, area_id = 23 },
	[365019] = { config_id = 365019, gadget_id = 70330197, pos = { x = -836.558, y = 40.280, z = 3345.318 }, rot = { x = 12.116, y = 25.443, z = 10.958 }, level = 30, area_id = 23 },
	[365020] = { config_id = 365020, gadget_id = 70310196, pos = { x = -850.721, y = 37.269, z = 3342.622 }, rot = { x = 329.768, y = 139.766, z = 33.983 }, level = 30, persistent = true, area_id = 23 },
	[365021] = { config_id = 365021, gadget_id = 70310196, pos = { x = -850.721, y = 37.269, z = 3342.622 }, rot = { x = 0.000, y = 156.170, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[365022] = { config_id = 365022, gadget_id = 70310196, pos = { x = -850.721, y = 37.269, z = 3342.622 }, rot = { x = 338.152, y = 102.204, z = 176.622 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1365001, name = "LUA_NOTIFY_365001", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_365001", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1365023, name = "ANY_GADGET_DIE_365023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_365023", action = "action_EVENT_ANY_GADGET_DIE_365023" },
	-- 节点死对应特效消失
	{ config_id = 1365024, name = "GADGET_STATE_CHANGE_365024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_365024", action = "action_EVENT_GADGET_STATE_CHANGE_365024" },
	-- 节点死对应特效消失
	{ config_id = 1365025, name = "GADGET_STATE_CHANGE_365025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_365025", action = "action_EVENT_GADGET_STATE_CHANGE_365025" },
	-- 节点死对应特效消失
	{ config_id = 1365026, name = "GADGET_STATE_CHANGE_365026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_365026", action = "action_EVENT_GADGET_STATE_CHANGE_365026" },
	-- 1
	{ config_id = 1365027, name = "ANY_GADGET_DIE_365027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_365027", action = "action_EVENT_ANY_GADGET_DIE_365027", trigger_count = 0 },
	-- 2
	{ config_id = 1365028, name = "ANY_GADGET_DIE_365028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_365028", action = "action_EVENT_ANY_GADGET_DIE_365028", trigger_count = 0 }
}

-- 点位
points = {
	[365003] = { config_id = 365003, pos = { x = -830.936, y = 48.239, z = 3314.858 }, rot = { x = 0.000, y = 40.606, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 365029, monster_id = 24030201, pos = { x = -810.672, y = 23.991, z = 3317.893 }, rot = { x = 0.000, y = 323.854, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
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
		gadgets = { 365005, 365006, 365007, 365008, 365009, 365010, 365012, 365017, 365018, 365019, 365020, 365021, 365022 },
		regions = { },
		triggers = { "LUA_NOTIFY_365001", "ANY_GADGET_DIE_365023", "GADGET_STATE_CHANGE_365024", "GADGET_STATE_CHANGE_365025", "GADGET_STATE_CHANGE_365026", "ANY_GADGET_DIE_365027", "ANY_GADGET_DIE_365028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 365002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 365004, 365012, 365017, 365018, 365019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 365004 },
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

-- 触发操作
function action_EVENT_LUA_NOTIFY_365001(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_365023(context, evt)
	if 365005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_365023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301365, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_365024(context, evt)
	if 365006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_365024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 365020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_365025(context, evt)
	if 365007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_365025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 365021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_365026(context, evt)
	if 365008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_365026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 365022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_365027(context, evt)
	if 365007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_365027(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_365028(context, evt)
	if 365008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_365028(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"