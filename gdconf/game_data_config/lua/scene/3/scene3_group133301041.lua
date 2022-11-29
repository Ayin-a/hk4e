-- 基础信息
local base_info = {
	group_id = 133301041
}

-- DEFS_MISCS
local BattleCfg = {
    BossGroup = 133301038,
    VarKey = "State_Island03",
    BossCidList = {41011,41020},
    CoreCid = 41001,
    RegionCid = 41005,
    SeedCid = 41012,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[41006] = { config_id = 41006, monster_id = 22040101, pos = { x = -608.290, y = -150.689, z = 4062.379 }, rot = { x = 0.000, y = 212.623, z = 0.000 }, level = 80, drop_id = 1000100, affix = { 1051, 6117, 1105 }, pose_id = 101, area_id = 25 },
	[41007] = { config_id = 41007, monster_id = 22040101, pos = { x = -594.907, y = -148.662, z = 4047.763 }, rot = { x = 0.000, y = 277.692, z = 0.000 }, level = 80, drop_id = 1000100, affix = { 1051, 6117, 1105 }, pose_id = 101, area_id = 25 },
	[41008] = { config_id = 41008, monster_id = 22040101, pos = { x = -611.521, y = -150.900, z = 4028.924 }, rot = { x = 0.000, y = 277.692, z = 0.000 }, level = 80, drop_id = 1000100, affix = { 1051, 6117, 1105 }, pose_id = 101, area_id = 25 },
	[41009] = { config_id = 41009, monster_id = 22040101, pos = { x = -616.873, y = -150.521, z = 4005.430 }, rot = { x = 0.000, y = 277.692, z = 0.000 }, level = 80, drop_id = 1000100, affix = { 1051, 6117, 1105 }, pose_id = 101, area_id = 25 },
	[41011] = { config_id = 41011, monster_id = 22050101, pos = { x = -599.960, y = -150.293, z = 4059.720 }, rot = { x = 0.000, y = 230.151, z = 0.000 }, level = 80, drop_id = 1000100, affix = { 1051, 6117, 6116, 1105 }, pose_id = 101, area_id = 25 },
	[41020] = { config_id = 41020, monster_id = 22050101, pos = { x = -598.560, y = -150.222, z = 4054.742 }, rot = { x = 0.000, y = 248.475, z = 0.000 }, level = 80, drop_id = 1000100, affix = { 1051, 6117, 6116, 1105 }, pose_id = 101, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[41001] = { config_id = 41001, gadget_id = 70310193, pos = { x = -594.769, y = -148.460, z = 4060.848 }, rot = { x = 0.000, y = 188.417, z = 0.000 }, level = 33, area_id = 25 },
	[41002] = { config_id = 41002, gadget_id = 70310195, pos = { x = -589.088, y = -148.254, z = 4049.625 }, rot = { x = 0.000, y = 276.904, z = 0.000 }, level = 33, area_id = 25 },
	[41003] = { config_id = 41003, gadget_id = 70310195, pos = { x = -614.876, y = -150.016, z = 4067.440 }, rot = { x = 4.499, y = 157.507, z = 355.363 }, level = 33, area_id = 25 },
	[41004] = { config_id = 41004, gadget_id = 70310195, pos = { x = -600.950, y = -150.810, z = 4040.008 }, rot = { x = 0.000, y = 314.575, z = 7.471 }, level = 33, area_id = 25 },
	[41010] = { config_id = 41010, gadget_id = 70310196, pos = { x = -595.006, y = -147.475, z = 4059.528 }, rot = { x = 357.680, y = 153.254, z = 0.027 }, level = 33, area_id = 25 },
	[41012] = { config_id = 41012, gadget_id = 70310199, pos = { x = -599.263, y = -150.599, z = 4047.802 }, rot = { x = 1.386, y = 329.833, z = 10.526 }, level = 33, state = GadgetState.GearStop, area_id = 25 },
	[41013] = { config_id = 41013, gadget_id = 70310196, pos = { x = -595.006, y = -147.475, z = 4059.528 }, rot = { x = 0.000, y = 294.228, z = 0.000 }, level = 33, area_id = 25 },
	[41014] = { config_id = 41014, gadget_id = 70310196, pos = { x = -595.006, y = -147.475, z = 4059.528 }, rot = { x = 0.000, y = 198.775, z = 0.000 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
	-- 岛C范围，当玩家进入时且主Group的BossBattleProgress合法，则将State_Island03设为1。然后激活该小岛相关玩法。
	[41005] = { config_id = 41005, shape = RegionShape.POLYGON, pos = { x = -597.274, y = -143.085, z = 4053.200 }, height = 60.348, point_array = { { x = -597.027, y = 4064.747 }, { x = -594.278, y = 4064.646 }, { x = -591.356, y = 4063.245 }, { x = -590.389, y = 4057.326 }, { x = -595.713, y = 4041.654 }, { x = -600.794, y = 4044.100 }, { x = -604.158, y = 4047.393 }, { x = -601.544, y = 4061.556 } }, area_id = 25 },
	[41018] = { config_id = 41018, shape = RegionShape.SPHERE, radius = 40, pos = { x = -606.487, y = -149.585, z = 4012.785 }, area_id = 25 },
	[41019] = { config_id = 41019, shape = RegionShape.SPHERE, radius = 5, pos = { x = -603.889, y = 150.054, z = 4059.028 }, area_id = 25 }
}

-- 触发器
triggers = {
	{ config_id = 1041015, name = "GADGET_STATE_CHANGE_41015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41015", action = "action_EVENT_GADGET_STATE_CHANGE_41015", trigger_count = 0 },
	{ config_id = 1041016, name = "GADGET_STATE_CHANGE_41016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41016", action = "action_EVENT_GADGET_STATE_CHANGE_41016", trigger_count = 0 },
	{ config_id = 1041017, name = "GADGET_STATE_CHANGE_41017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41017", action = "action_EVENT_GADGET_STATE_CHANGE_41017", trigger_count = 0 },
	{ config_id = 1041018, name = "ENTER_REGION_41018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41018", action = "action_EVENT_ENTER_REGION_41018" },
	{ config_id = 1041019, name = "ENTER_REGION_41019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41019", action = "" }
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
		monsters = { 41006, 41007, 41008, 41009 },
		gadgets = { 41001, 41002, 41003, 41004, 41010, 41012, 41013, 41014 },
		regions = { 41005, 41018 },
		triggers = { "GADGET_STATE_CHANGE_41015", "GADGET_STATE_CHANGE_41016", "GADGET_STATE_CHANGE_41017", "ENTER_REGION_41018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 41011, 41020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = EndSuite,
		monsters = { },
		gadgets = { 41012 },
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
function condition_EVENT_GADGET_STATE_CHANGE_41015(context, evt)
	if 41002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 41010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41016(context, evt)
	if 41003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 41013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41017(context, evt)
	if 41004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 41014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_41018(context, evt)
	if evt.param1 ~= 41018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"BossBattleProgress"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "BossBattleProgress", 133301038)  <  12 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_41018(context, evt)
	-- 调用提示id为 33010238 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010238) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_41019(context, evt)
	if evt.param1 ~= 41019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "V3_0/Boss_MaranaSub"
require "V3_0/DeathFieldStandard"