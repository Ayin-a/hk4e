-- 基础信息
local base_info = {
	group_id = 133301373
}

-- Trigger变量
local defs = {
	gadget_CoreID = 373005,
	monster_BossID = 373002,
	gadget_Point_1 = 373006,
	gadget_Point_2 = 373007,
	gadget_Point_3 = 373008,
	point_camera = 373009,
	gadget_lookEntity = 373005,
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
	[373002] = { config_id = 373002, monster_id = 26120101, pos = { x = -680.728, y = 130.142, z = 3391.855 }, rot = { x = 0.000, y = 195.711, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, pose_id = 201, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[373001] = { config_id = 373001, gadget_id = 70360001, pos = { x = -680.571, y = 125.143, z = 3392.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[373005] = { config_id = 373005, gadget_id = 70310194, pos = { x = -680.172, y = 132.548, z = 3393.676 }, rot = { x = 357.918, y = 191.776, z = 1.834 }, level = 30, persistent = true, area_id = 22 },
	[373006] = { config_id = 373006, gadget_id = 70310195, pos = { x = -689.884, y = 130.867, z = 3386.573 }, rot = { x = 0.000, y = 62.329, z = 0.000 }, level = 30, persistent = true, area_id = 22 },
	[373007] = { config_id = 373007, gadget_id = 70310195, pos = { x = -661.198, y = 132.963, z = 3365.813 }, rot = { x = 4.702, y = 4.525, z = 5.874 }, level = 33, persistent = true, area_id = 22 },
	[373008] = { config_id = 373008, gadget_id = 70310195, pos = { x = -707.578, y = 136.068, z = 3391.546 }, rot = { x = 0.000, y = 133.255, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[373012] = { config_id = 373012, gadget_id = 70310191, pos = { x = -689.064, y = 130.554, z = 3393.536 }, rot = { x = 0.000, y = 337.117, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[373018] = { config_id = 373018, gadget_id = 70310198, pos = { x = -672.101, y = 129.949, z = 3377.784 }, rot = { x = 0.000, y = 52.570, z = 0.000 }, level = 30, area_id = 22 },
	[373020] = { config_id = 373020, gadget_id = 70310196, pos = { x = -681.174, y = 132.139, z = 3392.573 }, rot = { x = 0.000, y = 237.534, z = 0.000 }, level = 30, persistent = true, area_id = 22 },
	[373021] = { config_id = 373021, gadget_id = 70310196, pos = { x = -680.005, y = 132.147, z = 3392.479 }, rot = { x = 356.041, y = 149.896, z = 0.000 }, level = 30, persistent = true, area_id = 22 },
	[373022] = { config_id = 373022, gadget_id = 70310196, pos = { x = -682.172, y = 132.204, z = 3393.222 }, rot = { x = 354.229, y = 270.403, z = 0.525 }, level = 30, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1373003, name = "LUA_NOTIFY_373003", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_373003", trigger_count = 0 },
	{ config_id = 1373010, name = "GROUP_LOAD_373010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_373010", trigger_count = 0 },
	-- LOAD时再发一次通知防卡死
	{ config_id = 1373011, name = "GROUP_LOAD_373011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_373011", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1373023, name = "ANY_GADGET_DIE_373023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_373023", action = "action_EVENT_ANY_GADGET_DIE_373023" },
	-- 节点死对应特效消失
	{ config_id = 1373024, name = "GADGET_STATE_CHANGE_373024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_373024", action = "action_EVENT_GADGET_STATE_CHANGE_373024" },
	-- 节点死对应特效消失
	{ config_id = 1373025, name = "GADGET_STATE_CHANGE_373025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_373025", action = "action_EVENT_GADGET_STATE_CHANGE_373025" },
	-- 节点死对应特效消失
	{ config_id = 1373026, name = "GADGET_STATE_CHANGE_373026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_373026", action = "action_EVENT_GADGET_STATE_CHANGE_373026" }
}

-- 点位
points = {
	[373009] = { config_id = 373009, pos = { x = -660.334, y = 135.851, z = 3370.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 22 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 373004, gadget_id = 70211111, pos = { x = -677.395, y = 130.591, z = 3392.472 }, rot = { x = 0.000, y = 215.075, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
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
		gadgets = { 373005, 373006, 373007, 373008, 373012, 373018, 373020, 373021, 373022 },
		regions = { },
		triggers = { "LUA_NOTIFY_373003", "GROUP_LOAD_373010", "ANY_GADGET_DIE_373023", "GADGET_STATE_CHANGE_373024", "GADGET_STATE_CHANGE_373025", "GADGET_STATE_CHANGE_373026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 373002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 373001, 373012, 373018 },
		regions = { },
		triggers = { "GROUP_LOAD_373011", "ANY_GADGET_DIE_373023" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function action_EVENT_LUA_NOTIFY_373003(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_373010(context, evt)
	ScriptLib.ChangeDeathZone(context,0,{is_open = true})
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301373, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_373011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302004_SOLVED") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_373023(context, evt)
	if 373005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_373023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301373, 4)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302004_SOLVED") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 373001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 373001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_373024(context, evt)
	if 373006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_373024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 373020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_373025(context, evt)
	if 373007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_373025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 373021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_373026(context, evt)
	if 373008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_373026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 373022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"