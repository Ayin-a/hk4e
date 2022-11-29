-- 基础信息
local base_info = {
	group_id = 133301039
}

-- DEFS_MISCS
local BattleCfg = {
    BossGroup = 133301038,
    VarKey = "State_Island01",
    BossCidList = {39011},
    CoreCid = 39003,
    RegionCid = 39002,
    SeedCid = 39004,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- Miscs有关联
	[39011] = { config_id = 39011, monster_id = 24010101, pos = { x = -778.022, y = -150.186, z = 3981.118 }, rot = { x = 0.000, y = 129.537, z = 0.000 }, level = 80, drop_id = 1000100, affix = { 6116, 6117, 1051, 1105 }, pose_id = 100, area_id = 25 },
	[39020] = { config_id = 39020, monster_id = 24020101, pos = { x = -784.593, y = -147.091, z = 3990.939 }, rot = { x = 0.000, y = 162.082, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 101, area_id = 25 },
	[39022] = { config_id = 39022, monster_id = 24020401, pos = { x = -776.767, y = -150.302, z = 3968.161 }, rot = { x = 0.000, y = 336.251, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 101, area_id = 25 },
	[39023] = { config_id = 39023, monster_id = 24020401, pos = { x = -778.006, y = -150.120, z = 3972.776 }, rot = { x = 0.000, y = 31.273, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 101, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- Miscs有关联
	[39003] = { config_id = 39003, gadget_id = 70310193, pos = { x = -788.771, y = -149.293, z = 3977.762 }, rot = { x = 0.000, y = 39.485, z = 353.592 }, level = 33, area_id = 25 },
	-- Miscs有关联
	[39004] = { config_id = 39004, gadget_id = 70310199, pos = { x = -764.120, y = -150.519, z = 3966.829 }, rot = { x = 358.804, y = 338.664, z = 0.100 }, level = 33, state = GadgetState.GearStop, area_id = 25 },
	[39005] = { config_id = 39005, gadget_id = 70310007, pos = { x = -776.727, y = -151.267, z = 3962.230 }, rot = { x = 344.304, y = 49.219, z = 349.173 }, level = 33, area_id = 25 },
	[39006] = { config_id = 39006, gadget_id = 70310007, pos = { x = -787.597, y = -148.665, z = 3984.658 }, rot = { x = 343.469, y = 132.148, z = 347.707 }, level = 33, area_id = 25 },
	[39007] = { config_id = 39007, gadget_id = 70310195, pos = { x = -782.876, y = -149.227, z = 3987.076 }, rot = { x = 0.000, y = 157.134, z = 358.598 }, level = 33, area_id = 25 },
	[39009] = { config_id = 39009, gadget_id = 70310195, pos = { x = -778.580, y = -150.502, z = 3970.897 }, rot = { x = 3.518, y = 18.015, z = 3.427 }, level = 33, area_id = 25 },
	[39010] = { config_id = 39010, gadget_id = 70310195, pos = { x = -777.837, y = -150.233, z = 3970.076 }, rot = { x = 358.533, y = 123.347, z = 351.876 }, level = 33, area_id = 25 },
	[39012] = { config_id = 39012, gadget_id = 70290513, pos = { x = -787.386, y = -148.582, z = 3978.403 }, rot = { x = 352.284, y = 24.785, z = 176.973 }, level = 33, area_id = 25 },
	[39013] = { config_id = 39013, gadget_id = 70310196, pos = { x = -787.596, y = -148.427, z = 3977.864 }, rot = { x = 3.497, y = 128.566, z = 2.785 }, level = 33, area_id = 25 },
	[39014] = { config_id = 39014, gadget_id = 70310196, pos = { x = -787.596, y = -148.427, z = 3977.864 }, rot = { x = 3.497, y = 128.566, z = 2.785 }, level = 33, area_id = 25 },
	[39016] = { config_id = 39016, gadget_id = 70310007, pos = { x = -744.767, y = -151.504, z = 3992.383 }, rot = { x = 333.952, y = 114.903, z = 342.531 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
	[39001] = { config_id = 39001, shape = RegionShape.SPHERE, radius = 20, pos = { x = -786.210, y = -150.298, z = 3982.116 }, area_id = 25 },
	-- Miscs有关联
	[39002] = { config_id = 39002, shape = RegionShape.POLYGON, pos = { x = -777.591, y = -141.946, z = 3978.562 }, height = 58.070, point_array = { { x = -775.392, y = 3982.517 }, { x = -770.734, y = 3975.084 }, { x = -768.157, y = 3971.368 }, { x = -764.189, y = 3969.875 }, { x = -759.246, y = 3968.459 }, { x = -760.307, y = 3963.071 }, { x = -767.216, y = 3963.447 }, { x = -778.914, y = 3966.398 }, { x = -786.719, y = 3963.115 }, { x = -794.169, y = 3967.423 }, { x = -795.936, y = 3972.657 }, { x = -793.538, y = 3983.621 }, { x = -785.865, y = 3994.052 }, { x = -779.295, y = 3989.145 } }, area_id = 25 }
}

-- 触发器
triggers = {
	{ config_id = 1039001, name = "ENTER_REGION_39001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39001", action = "action_EVENT_ENTER_REGION_39001" },
	{ config_id = 1039008, name = "ANY_MONSTER_LIVE_39008", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_39008", action = "action_EVENT_ANY_MONSTER_LIVE_39008" },
	{ config_id = 1039017, name = "GADGET_STATE_CHANGE_39017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39017", action = "action_EVENT_GADGET_STATE_CHANGE_39017", trigger_count = 0 },
	{ config_id = 1039018, name = "GADGET_STATE_CHANGE_39018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39018", action = "action_EVENT_GADGET_STATE_CHANGE_39018", trigger_count = 0 },
	{ config_id = 1039019, name = "GADGET_STATE_CHANGE_39019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39019", action = "action_EVENT_GADGET_STATE_CHANGE_39019", trigger_count = 0 }
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
		gadgets = { 39003, 39004, 39005, 39006, 39007, 39009, 39010, 39012, 39013, 39014, 39016 },
		regions = { 39001, 39002 },
		triggers = { "ENTER_REGION_39001", "ANY_MONSTER_LIVE_39008", "GADGET_STATE_CHANGE_39017", "GADGET_STATE_CHANGE_39018", "GADGET_STATE_CHANGE_39019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 39011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = EndSuite,
		monsters = { },
		gadgets = { 39004 },
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
function condition_EVENT_ENTER_REGION_39001(context, evt)
	if evt.param1 ~= 39001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"BossBattleProgress"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "BossBattleProgress", 133301038)  <  3  then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_39001(context, evt)
	-- 调用提示id为 33010046 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010046) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_39008(context, evt)
	if 39011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_39008(context, evt)
	-- 调用提示id为 33010223 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010223) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39017(context, evt)
	if 39007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 39012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39018(context, evt)
	if 39009 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39018(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 39013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39019(context, evt)
	if 39010 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39019(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 39014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/Boss_MaranaSub"
require "V3_0/DeathFieldStandard"