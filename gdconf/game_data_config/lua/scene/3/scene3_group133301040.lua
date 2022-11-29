-- 基础信息
local base_info = {
	group_id = 133301040
}

-- DEFS_MISCS
local BattleCfg = {
    BossGroup = 133301038,
    VarKey = "State_Island02",
    BossCidList = {40010},
    CoreCid = 40001,
    RegionCid = 40005,
    SeedCid = 40012,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[40006] = { config_id = 40006, monster_id = 22040201, pos = { x = -744.874, y = -149.515, z = 4076.577 }, rot = { x = 0.000, y = 264.009, z = 0.000 }, level = 80, drop_id = 1000100, affix = { 1051, 6117, 1105 }, pose_id = 101, area_id = 25 },
	[40007] = { config_id = 40007, monster_id = 22040201, pos = { x = -737.493, y = -150.179, z = 4080.443 }, rot = { x = 0.000, y = 196.656, z = 0.000 }, level = 80, drop_id = 1000100, affix = { 1051, 6117, 1105 }, pose_id = 101, area_id = 25 },
	-- 修改时，记得填Misc
	[40010] = { config_id = 40010, monster_id = 22050201, pos = { x = -741.406, y = -150.024, z = 4077.574 }, rot = { x = 0.000, y = 217.668, z = 0.000 }, level = 80, drop_id = 1000100, affix = { 1051, 6117, 6116, 1105 }, pose_id = 101, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 修改时，记得填Misc
	[40001] = { config_id = 40001, gadget_id = 70310193, pos = { x = -741.517, y = -148.964, z = 4083.145 }, rot = { x = 5.837, y = 147.362, z = 356.058 }, level = 33, area_id = 25 },
	[40002] = { config_id = 40002, gadget_id = 70310195, pos = { x = -754.313, y = -146.689, z = 4075.093 }, rot = { x = 8.757, y = 149.588, z = 8.635 }, level = 33, area_id = 25 },
	[40003] = { config_id = 40003, gadget_id = 70310195, pos = { x = -732.645, y = -150.906, z = 4075.733 }, rot = { x = 0.000, y = 245.050, z = 11.879 }, level = 33, area_id = 25 },
	[40004] = { config_id = 40004, gadget_id = 70310195, pos = { x = -755.032, y = -147.194, z = 4074.754 }, rot = { x = 6.329, y = 207.785, z = 354.212 }, level = 33, area_id = 25 },
	[40008] = { config_id = 40008, gadget_id = 70310196, pos = { x = -741.629, y = -148.079, z = 4081.748 }, rot = { x = 350.675, y = 238.794, z = 192.040 }, level = 33, area_id = 25 },
	[40009] = { config_id = 40009, gadget_id = 70310196, pos = { x = -741.546, y = -148.071, z = 4081.602 }, rot = { x = 8.097, y = 123.583, z = 177.346 }, level = 33, area_id = 25 },
	[40011] = { config_id = 40011, gadget_id = 70310196, pos = { x = -741.629, y = -148.079, z = 4081.748 }, rot = { x = 354.042, y = 244.996, z = 72.840 }, level = 33, area_id = 25 },
	[40012] = { config_id = 40012, gadget_id = 70310199, pos = { x = -749.358, y = -149.705, z = 4070.115 }, rot = { x = 0.000, y = 205.587, z = 10.199 }, level = 33, state = GadgetState.GearStop, area_id = 25 }
}

-- 区域
regions = {
	-- 修改时，记得填Misc
	[40005] = { config_id = 40005, shape = RegionShape.POLYGON, pos = { x = -745.436, y = -142.561, z = 4075.649 }, height = 59.300, point_array = { { x = -734.792, y = 4080.423 }, { x = -734.016, y = 4072.852 }, { x = -747.417, y = 4056.748 }, { x = -750.748, y = 4057.074 }, { x = -750.602, y = 4061.100 }, { x = -747.137, y = 4065.420 }, { x = -757.827, y = 4074.034 }, { x = -752.963, y = 4082.815 }, { x = -737.953, y = 4094.551 }, { x = -733.045, y = 4083.465 } }, area_id = 25 },
	[40016] = { config_id = 40016, shape = RegionShape.SPHERE, radius = 15, pos = { x = -740.189, y = -149.911, z = 4076.293 }, area_id = 25 }
}

-- 触发器
triggers = {
	{ config_id = 1040013, name = "GADGET_STATE_CHANGE_40013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40013", action = "action_EVENT_GADGET_STATE_CHANGE_40013", trigger_count = 0 },
	{ config_id = 1040014, name = "GADGET_STATE_CHANGE_40014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40014", action = "action_EVENT_GADGET_STATE_CHANGE_40014", trigger_count = 0 },
	{ config_id = 1040015, name = "GADGET_STATE_CHANGE_40015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40015", action = "action_EVENT_GADGET_STATE_CHANGE_40015", trigger_count = 0 },
	{ config_id = 1040016, name = "ENTER_REGION_40016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40016", action = "action_EVENT_ENTER_REGION_40016" },
	{ config_id = 1040017, name = "ANY_MONSTER_LIVE_40017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_40017", action = "action_EVENT_ANY_MONSTER_LIVE_40017" }
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
		monsters = { 40006, 40007 },
		gadgets = { 40001, 40002, 40003, 40004, 40008, 40009, 40011, 40012 },
		regions = { 40005, 40016 },
		triggers = { "GADGET_STATE_CHANGE_40013", "GADGET_STATE_CHANGE_40014", "GADGET_STATE_CHANGE_40015", "ENTER_REGION_40016", "ANY_MONSTER_LIVE_40017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 40010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = EndSuite,
		monsters = { },
		gadgets = { 40012 },
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
function condition_EVENT_GADGET_STATE_CHANGE_40013(context, evt)
	if 40002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40014(context, evt)
	if 40003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40015(context, evt)
	if 40004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_40016(context, evt)
	if evt.param1 ~= 40016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"BossBattleProgress"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "BossBattleProgress", 133301038)  <  7  then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40016(context, evt)
	-- 调用提示id为 33010051 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_40017(context, evt)
	if 40010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_40017(context, evt)
	-- 调用提示id为 33010231 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010231) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_0/Boss_MaranaSub"
require "V3_0/DeathFieldStandard"