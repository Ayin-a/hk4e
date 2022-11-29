-- 基础信息
local base_info = {
	group_id = 133222320
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
	{ config_id = 320001, gadget_id = 70211102, pos = { x = -4707.774, y = 447.294, z = -4204.678 }, rot = { x = 0.000, y = 75.347, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 320002, gadget_id = 70211102, pos = { x = -4707.143, y = 203.485, z = -4205.613 }, rot = { x = 353.096, y = 265.013, z = 12.871 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 320003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4708.111, y = 447.327, z = -4204.126 }, area_id = 14 },
	{ config_id = 320007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4706.830, y = 204.202, z = -4205.925 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1320003, name = "ENTER_REGION_320003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_320003", action = "action_EVENT_ENTER_REGION_320003", trigger_count = 0 },
	-- 宝箱开了就变到空的了
	{ config_id = 1320004, name = "GADGET_STATE_CHANGE_320004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_320004", action = "action_EVENT_GADGET_STATE_CHANGE_320004", trigger_count = 0 },
	-- 任务没有完成，宝箱没有开
	{ config_id = 1320005, name = "GROUP_LOAD_320005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_320005", action = "action_EVENT_GROUP_LOAD_320005", trigger_count = 0 },
	-- 任务完成
	{ config_id = 1320006, name = "QUEST_START_320006", event = EventType.EVENT_QUEST_START, source = "7215805", condition = "condition_EVENT_QUEST_START_320006", action = "action_EVENT_QUEST_START_320006", trigger_count = 0 },
	{ config_id = 1320007, name = "ENTER_REGION_320007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_320007", action = "action_EVENT_ENTER_REGION_320007", trigger_count = 0 },
	-- 任务完成，宝箱没有开
	{ config_id = 1320008, name = "GROUP_LOAD_320008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_320008", action = "action_EVENT_GROUP_LOAD_320008", trigger_count = 0 },
	{ config_id = 1320009, name = "TIME_AXIS_PASS_320009", event = EventType.EVENT_TIME_AXIS_PASS, source = "Finish", condition = "condition_EVENT_TIME_AXIS_PASS_320009", action = "action_EVENT_TIME_AXIS_PASS_320009", trigger_count = 0 },
	-- 保中保
	{ config_id = 1320010, name = "GROUP_LOAD_320010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_320010", action = "action_EVENT_GROUP_LOAD_320010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Open", value = 0, no_refresh = true },
	{ config_id = 2, name = "Quest", value = 0, no_refresh = true }
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
		gadgets = { 320001 },
		regions = { 320003 },
		triggers = { "ENTER_REGION_320003", "GADGET_STATE_CHANGE_320004", "GROUP_LOAD_320005", "QUEST_START_320006", "GROUP_LOAD_320008", "TIME_AXIS_PASS_320009", "GROUP_LOAD_320010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 地上,
		monsters = { },
		gadgets = { 320002 },
		regions = { 320007 },
		triggers = { "GROUP_LOAD_320005", "QUEST_START_320006", "ENTER_REGION_320007", "GROUP_LOAD_320008", "GROUP_LOAD_320010" },
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
function condition_EVENT_ENTER_REGION_320003(context, evt)
	if evt.param1 ~= 320003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_320003(context, evt)
	-- 将configid为 320001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 320001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_320004(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133222320, 320001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_320004(context, evt)
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
function condition_EVENT_GROUP_LOAD_320005(context, evt)
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
function action_EVENT_GROUP_LOAD_320005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222320, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_320006(context, evt)
	-- 判断变量"Open"为0
	if ScriptLib.GetGroupVariableValue(context, "Open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_320006(context, evt)
	-- 将本组内变量名为 "Quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222320, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_320007(context, evt)
	if evt.param1 ~= 320007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_320007(context, evt)
	-- 将configid为 320002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 320002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_320008(context, evt)
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
function action_EVENT_GROUP_LOAD_320008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222320, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_320009(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_320009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222320, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_320010(context, evt)
	-- 判断变量"Open"为1
	if ScriptLib.GetGroupVariableValue(context, "Open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_320010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222320, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end