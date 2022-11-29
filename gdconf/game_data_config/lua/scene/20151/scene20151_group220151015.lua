-- 基础信息
local base_info = {
	group_id = 220151015
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
	-- 方尖碑解锁+电梯已移动+玩家进入区域时,重置电梯最后阶段
	{ config_id = 15001, shape = RegionShape.CUBIC, size = { x = 35.000, y = 10.000, z = 15.000 }, pos = { x = -138.503, y = 7.500, z = 61.400 } },
	-- 方尖碑解锁+电梯已移动+玩家进入区域时,重置电梯最后阶段
	{ config_id = 15002, shape = RegionShape.CUBIC, size = { x = 35.000, y = 10.000, z = 15.000 }, pos = { x = -138.503, y = 7.500, z = 84.600 } },
	-- 方尖碑解锁+电梯已移动+玩家进入区域时,重置电梯最后阶段
	{ config_id = 15003, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 10.000 }, pos = { x = -150.200, y = 7.500, z = 73.100 } },
	-- 方尖碑解锁+电梯已移动+玩家进入区域时,重置电梯最后阶段
	{ config_id = 15004, shape = RegionShape.CUBIC, size = { x = 14.000, y = 10.000, z = 10.000 }, pos = { x = -127.700, y = 7.500, z = 73.072 } }
}

-- 触发器
triggers = {
	-- 方尖碑解锁+电梯已移动+玩家进入区域时,重置电梯最后阶段
	{ config_id = 1015001, name = "ENTER_REGION_15001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15001", action = "action_EVENT_ENTER_REGION_15001", trigger_count = 0 },
	-- 方尖碑解锁+电梯已移动+玩家进入区域时,重置电梯最后阶段
	{ config_id = 1015002, name = "ENTER_REGION_15002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15002", action = "action_EVENT_ENTER_REGION_15002", trigger_count = 0 },
	-- 方尖碑解锁+电梯已移动+玩家进入区域时,重置电梯最后阶段
	{ config_id = 1015003, name = "ENTER_REGION_15003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15003", action = "action_EVENT_ENTER_REGION_15003", trigger_count = 0 },
	-- 方尖碑解锁+电梯已移动+玩家进入区域时,重置电梯最后阶段
	{ config_id = 1015004, name = "ENTER_REGION_15004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15004", action = "action_EVENT_ENTER_REGION_15004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IsFinalMove_check", value = 0, no_refresh = false }
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
		regions = { 15001, 15002, 15003, 15004 },
		triggers = { "ENTER_REGION_15001", "ENTER_REGION_15002", "ENTER_REGION_15003", "ENTER_REGION_15004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_15001(context, evt)
	if evt.param1 ~= 15001 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 220151002) ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"IsFinalMove_check"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IsFinalMove_check", 220151015) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15001(context, evt)
	-- 将本组内变量名为 "IsFinalMove_check" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "IsFinalMove_check", 0, 220151015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220151005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15002(context, evt)
	if evt.param1 ~= 15002 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 220151002) ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"IsFinalMove_check"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IsFinalMove_check", 220151015) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15002(context, evt)
	-- 将本组内变量名为 "IsFinalMove_check" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "IsFinalMove_check", 0, 220151015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220151005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15003(context, evt)
	if evt.param1 ~= 15003 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 220151002) ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"IsFinalMove_check"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IsFinalMove_check", 220151015) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15003(context, evt)
	-- 将本组内变量名为 "IsFinalMove_check" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "IsFinalMove_check", 0, 220151015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220151005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15004(context, evt)
	if evt.param1 ~= 15004 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 220151002) ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"IsFinalMove_check"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IsFinalMove_check", 220151015) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15004(context, evt)
	-- 将本组内变量名为 "IsFinalMove_check" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "IsFinalMove_check", 0, 220151015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220151005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end