-- 基础信息
local base_info = {
	group_id = 133222315
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 315001, gadget_id = 70211102, pos = { x = -4544.322, y = 371.482, z = -4141.794 }, rot = { x = 0.000, y = 265.792, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 315006, gadget_id = 70211102, pos = { x = -4544.322, y = 198.326, z = -4141.794 }, rot = { x = 0.000, y = 265.792, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 315002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4545.941, y = 371.673, z = -4142.247 }, area_id = 14 },
	{ config_id = 315007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4544.435, y = 198.320, z = -4141.925 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1315002, name = "ENTER_REGION_315002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_315002", action = "action_EVENT_ENTER_REGION_315002", trigger_count = 0 },
	-- 宝箱开了就变到空的了
	{ config_id = 1315003, name = "GADGET_STATE_CHANGE_315003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_315003", action = "action_EVENT_GADGET_STATE_CHANGE_315003", trigger_count = 0 },
	-- 任务没有完成，宝箱没有开
	{ config_id = 1315004, name = "GROUP_LOAD_315004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_315004", action = "action_EVENT_GROUP_LOAD_315004", trigger_count = 0 },
	-- 任务完成
	{ config_id = 1315005, name = "QUEST_START_315005", event = EventType.EVENT_QUEST_START, source = "7215805", condition = "condition_EVENT_QUEST_START_315005", action = "action_EVENT_QUEST_START_315005", trigger_count = 0 },
	{ config_id = 1315007, name = "ENTER_REGION_315007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_315007", action = "action_EVENT_ENTER_REGION_315007", trigger_count = 0 },
	-- 任务完成，宝箱没有开
	{ config_id = 1315008, name = "GROUP_LOAD_315008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_315008", action = "action_EVENT_GROUP_LOAD_315008", trigger_count = 0 },
	{ config_id = 1315009, name = "TIME_AXIS_PASS_315009", event = EventType.EVENT_TIME_AXIS_PASS, source = "Finish", condition = "condition_EVENT_TIME_AXIS_PASS_315009", action = "action_EVENT_TIME_AXIS_PASS_315009", trigger_count = 0 },
	-- 保中保
	{ config_id = 1315011, name = "GROUP_LOAD_315011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_315011", action = "action_EVENT_GROUP_LOAD_315011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Open", value = 0, no_refresh = true },
	{ config_id = 2, name = "Quest", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1315010, name = "TIME_AXIS_PASS_315010", event = EventType.EVENT_TIME_AXIS_PASS, source = "Finish", condition = "condition_EVENT_TIME_AXIS_PASS_315010", action = "action_EVENT_TIME_AXIS_PASS_315010", trigger_count = 0 }
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
	end_suite = 4,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 空中,
		monsters = { },
		gadgets = { 315001 },
		regions = { 315002 },
		triggers = { "ENTER_REGION_315002", "GADGET_STATE_CHANGE_315003", "GROUP_LOAD_315004", "QUEST_START_315005", "GROUP_LOAD_315008", "TIME_AXIS_PASS_315009", "GROUP_LOAD_315011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 地上,
		monsters = { },
		gadgets = { 315006 },
		regions = { 315007 },
		triggers = { "GROUP_LOAD_315004", "QUEST_START_315005", "ENTER_REGION_315007", "GROUP_LOAD_315008", "GROUP_LOAD_315011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 空,
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

-- 触发条件
function condition_EVENT_ENTER_REGION_315002(context, evt)
	if evt.param1 ~= 315002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_315002(context, evt)
	-- 将configid为 315001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 315001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_315003(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133222315, 315001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_315003(context, evt)
	-- 将本组内变量名为 "Open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"Finish"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Finish", {5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_315004(context, evt)
	-- 判断变量"Open"为0
	if ScriptLib.GetGroupVariableValue(context, "Open") ~= 0 then
			return false
	end
	
	-- 判断变量"Quest"为0
	if ScriptLib.GetGroupVariableValue(context, "Quest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_315004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222315, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_315005(context, evt)
	-- 判断变量"Open"为0
	if ScriptLib.GetGroupVariableValue(context, "Open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_315005(context, evt)
	-- 将本组内变量名为 "Quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222315, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_315007(context, evt)
	if evt.param1 ~= 315007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_315007(context, evt)
	-- 将configid为 315006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 315006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_315008(context, evt)
	-- 判断变量"Open"为0
	if ScriptLib.GetGroupVariableValue(context, "Open") ~= 0 then
			return false
	end
	
	-- 判断变量"Quest"为1
	if ScriptLib.GetGroupVariableValue(context, "Quest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_315008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222315, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_315009(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_315009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222315, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_315011(context, evt)
	-- 判断变量"Open"为1
	if ScriptLib.GetGroupVariableValue(context, "Open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_315011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222315, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end