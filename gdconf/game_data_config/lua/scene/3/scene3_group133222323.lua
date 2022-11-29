-- 基础信息
local base_info = {
	group_id = 133222323
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
	{ config_id = 323001, gadget_id = 70211112, pos = { x = -4658.849, y = 428.144, z = -4052.479 }, rot = { x = 352.906, y = 248.660, z = 358.972 }, level = 26, drop_tag = "解谜中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 323002, gadget_id = 70211112, pos = { x = -4660.729, y = 199.141, z = -4054.266 }, rot = { x = 335.680, y = 300.968, z = 351.335 }, level = 26, drop_tag = "解谜中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 323003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4659.198, y = 428.939, z = -4052.633 }, area_id = 14 },
	{ config_id = 323007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4660.774, y = 200.019, z = -4054.130 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1323003, name = "ENTER_REGION_323003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_323003", action = "action_EVENT_ENTER_REGION_323003", trigger_count = 0 },
	-- 宝箱开了就变到空的了
	{ config_id = 1323004, name = "GADGET_STATE_CHANGE_323004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_323004", action = "action_EVENT_GADGET_STATE_CHANGE_323004", trigger_count = 0 },
	-- 任务没有完成，宝箱没有开
	{ config_id = 1323005, name = "GROUP_LOAD_323005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_323005", action = "action_EVENT_GROUP_LOAD_323005", trigger_count = 0 },
	-- 任务完成
	{ config_id = 1323006, name = "QUEST_START_323006", event = EventType.EVENT_QUEST_START, source = "7215805", condition = "condition_EVENT_QUEST_START_323006", action = "action_EVENT_QUEST_START_323006", trigger_count = 0 },
	{ config_id = 1323007, name = "ENTER_REGION_323007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_323007", action = "action_EVENT_ENTER_REGION_323007", trigger_count = 0 },
	-- 任务完成，宝箱没有开
	{ config_id = 1323008, name = "GROUP_LOAD_323008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_323008", action = "action_EVENT_GROUP_LOAD_323008", trigger_count = 0 },
	{ config_id = 1323009, name = "TIME_AXIS_PASS_323009", event = EventType.EVENT_TIME_AXIS_PASS, source = "Finish", condition = "condition_EVENT_TIME_AXIS_PASS_323009", action = "action_EVENT_TIME_AXIS_PASS_323009", trigger_count = 0 },
	-- 保中保
	{ config_id = 1323010, name = "GROUP_LOAD_323010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_323010", action = "action_EVENT_GROUP_LOAD_323010", trigger_count = 0 }
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
		gadgets = { 323001 },
		regions = { 323003 },
		triggers = { "ENTER_REGION_323003", "GADGET_STATE_CHANGE_323004", "GROUP_LOAD_323005", "QUEST_START_323006", "GROUP_LOAD_323008", "TIME_AXIS_PASS_323009", "GROUP_LOAD_323010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 地上,
		monsters = { },
		gadgets = { 323002 },
		regions = { 323007 },
		triggers = { "GROUP_LOAD_323005", "QUEST_START_323006", "ENTER_REGION_323007", "GROUP_LOAD_323008", "GROUP_LOAD_323010" },
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
function condition_EVENT_ENTER_REGION_323003(context, evt)
	if evt.param1 ~= 323003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_323003(context, evt)
	-- 将configid为 323001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 323001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_323004(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133222323, 323001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_323004(context, evt)
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
function condition_EVENT_GROUP_LOAD_323005(context, evt)
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
function action_EVENT_GROUP_LOAD_323005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222323, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_323006(context, evt)
	-- 判断变量"Open"为0
	if ScriptLib.GetGroupVariableValue(context, "Open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_323006(context, evt)
	-- 将本组内变量名为 "Quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222323, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_323007(context, evt)
	if evt.param1 ~= 323007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_323007(context, evt)
	-- 将configid为 323002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 323002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_323008(context, evt)
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
function action_EVENT_GROUP_LOAD_323008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222323, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_323009(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_323009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222323, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_323010(context, evt)
	-- 判断变量"Open"为1
	if ScriptLib.GetGroupVariableValue(context, "Open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_323010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222323, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end