-- 基础信息
local base_info = {
	group_id = 199002171
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 171004, monster_id = 21010201, pos = { x = 415.469, y = 170.521, z = -479.114 }, rot = { x = 0.000, y = 66.621, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9013, area_id = 401 },
	{ config_id = 171005, monster_id = 21020201, pos = { x = 409.158, y = 170.120, z = -483.709 }, rot = { x = 0.000, y = 49.241, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 401, area_id = 401 },
	{ config_id = 171006, monster_id = 22010201, pos = { x = 407.419, y = 170.033, z = -478.913 }, rot = { x = 0.000, y = 117.173, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 401 },
	{ config_id = 171007, monster_id = 21010301, pos = { x = 411.049, y = 170.147, z = -485.018 }, rot = { x = 0.000, y = 49.159, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 401 },
	{ config_id = 171008, monster_id = 21010301, pos = { x = 407.390, y = 170.056, z = -480.895 }, rot = { x = 0.000, y = 100.523, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 401 },
	{ config_id = 171009, monster_id = 21010401, pos = { x = 410.812, y = 171.591, z = -473.884 }, rot = { x = 0.000, y = 154.469, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 171001, gadget_id = 70310332, pos = { x = 417.037, y = 170.451, z = -478.332 }, rot = { x = 0.000, y = 202.068, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 401 },
	{ config_id = 171011, gadget_id = 70211002, pos = { x = 413.418, y = 171.471, z = -473.686 }, rot = { x = 9.329, y = 191.236, z = 7.494 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	{ config_id = 171013, gadget_id = 70360001, pos = { x = 406.892, y = 166.881, z = -483.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 171003, shape = RegionShape.SPHERE, radius = 8, pos = { x = 453.524, y = 170.566, z = -479.565 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1171002, name = "GADGETTALK_DONE_171002", event = EventType.EVENT_GADGETTALK_DONE, source = "6800383", condition = "", action = "action_EVENT_GADGETTALK_DONE_171002", trigger_count = 0 },
	{ config_id = 1171003, name = "ENTER_REGION_171003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_171003", action = "action_EVENT_ENTER_REGION_171003", trigger_count = 0 },
	{ config_id = 1171010, name = "ANY_MONSTER_DIE_171010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_171010", action = "action_EVENT_ANY_MONSTER_DIE_171010", trigger_count = 0 },
	{ config_id = 1171012, name = "GROUP_LOAD_171012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_171012", action = "action_EVENT_GROUP_LOAD_171012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 171013 },
		regions = { },
		triggers = { "GROUP_LOAD_171012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 171004, 171005, 171006, 171007, 171008, 171009 },
		gadgets = { 171001, 171011 },
		regions = { 171003 },
		triggers = { "GADGETTALK_DONE_171002", "ENTER_REGION_171003", "ANY_MONSTER_DIE_171010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGETTALK_DONE_171002(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 171001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_171003(context, evt)
	if evt.param1 ~= 171003 then return false end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199002099) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_171003(context, evt)
	-- 调用提示id为 1111342 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111342) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_171010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_171010(context, evt)
	-- 将configid为 171011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 171001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_171012(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199002099) ~= 1 then
			return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_171012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002171, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end