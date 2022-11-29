-- 基础信息
local base_info = {
	group_id = 201059012
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
}

-- 区域
regions = {
	{ config_id = 12005, shape = RegionShape.CUBIC, size = { x = 2.000, y = 10.000, z = 15.000 }, pos = { x = -234.007, y = 130.286, z = 92.450 } },
	{ config_id = 12006, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 2.000 }, pos = { x = -255.481, y = 145.749, z = 24.793 } }
}

-- 触发器
triggers = {
	{ config_id = 1012001, name = "QUEST_START_12001", event = EventType.EVENT_QUEST_START, source = "1111303", condition = "condition_EVENT_QUEST_START_12001", action = "action_EVENT_QUEST_START_12001", trigger_count = 0 },
	{ config_id = 1012002, name = "QUEST_START_12002", event = EventType.EVENT_QUEST_START, source = "1111303", condition = "condition_EVENT_QUEST_START_12002", action = "action_EVENT_QUEST_START_12002", trigger_count = 0 },
	{ config_id = 1012003, name = "QUEST_START_12003", event = EventType.EVENT_QUEST_START, source = "1111303", condition = "condition_EVENT_QUEST_START_12003", action = "action_EVENT_QUEST_START_12003", trigger_count = 0 },
	{ config_id = 1012004, name = "QUEST_START_12004", event = EventType.EVENT_QUEST_START, source = "1111303", condition = "condition_EVENT_QUEST_START_12004", action = "action_EVENT_QUEST_START_12004", trigger_count = 0 },
	{ config_id = 1012005, name = "ENTER_REGION_12005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12005", action = "action_EVENT_ENTER_REGION_12005", trigger_count = 0 },
	{ config_id = 1012006, name = "ENTER_REGION_12006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12006", action = "action_EVENT_ENTER_REGION_12006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "loss", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		regions = { 12005, 12006 },
		triggers = { "QUEST_START_12001", "QUEST_START_12002", "QUEST_START_12003", "QUEST_START_12004", "ENTER_REGION_12005", "ENTER_REGION_12006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_12001(context, evt)
	-- 判断变量"loop0"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "loop0", 201059004) ~= 3 then
			return false
	end
	
	-- 判断变量"loss"为1
	if ScriptLib.GetGroupVariableValue(context, "loss") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_12001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop0" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "loop0", -1, 201059004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_12002(context, evt)
	-- 判断变量"loop1"为5
	if ScriptLib.GetGroupVariableValueByGroup(context, "loop1", 201059004) ~= 5 then
			return false
	end
	
	-- 判断变量"loss"为1
	if ScriptLib.GetGroupVariableValue(context, "loss") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_12002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop1" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "loop1", -1, 201059004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_12003(context, evt)
	-- 判断变量"loop2"为5
	if ScriptLib.GetGroupVariableValueByGroup(context, "loop2", 201059004) ~= 5 then
			return false
	end
	
	-- 判断变量"loss"为1
	if ScriptLib.GetGroupVariableValue(context, "loss") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_12003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop2" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "loop2", -1, 201059004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_12004(context, evt)
	-- 判断变量"loop3"为5
	if ScriptLib.GetGroupVariableValueByGroup(context, "loop3", 201059004) ~= 5 then
			return false
	end
	
	-- 判断变量"loss"为1
	if ScriptLib.GetGroupVariableValue(context, "loss") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_12004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop3" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "loop3", -1, 201059004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12005(context, evt)
	if evt.param1 ~= 12005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12005(context, evt)
	-- 将本组内变量名为 "loss" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "loss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12006(context, evt)
	if evt.param1 ~= 12006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12006(context, evt)
	-- 将本组内变量名为 "loss" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "loss", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end