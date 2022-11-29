-- 基础信息
local base_info = {
	group_id = 133213292
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
	{ config_id = 292001, gadget_id = 70211111, pos = { x = -4095.399, y = 207.288, z = -3142.322 }, rot = { x = 6.901, y = 359.130, z = 350.528 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1292002, name = "VARIABLE_CHANGE_292002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_292002", action = "action_EVENT_VARIABLE_CHANGE_292002" },
	{ config_id = 1292003, name = "GROUP_LOAD_292003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_292003", action = "action_EVENT_GROUP_LOAD_292003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count1", value = 0, no_refresh = true },
	{ config_id = 2, name = "count2", value = 0, no_refresh = true }
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
		regions = { },
		triggers = { "VARIABLE_CHANGE_292002", "GROUP_LOAD_292003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_292002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count1"为1
	if ScriptLib.GetGroupVariableValue(context, "count1") ~= 1 then
			return false
	end
	
	-- 判断变量"count2"为1
	if ScriptLib.GetGroupVariableValue(context, "count2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_292002(context, evt)
	-- 创建id为292001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 292001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_292003(context, evt)
	-- 判断变量"count1"为1
	if ScriptLib.GetGroupVariableValue(context, "count1") ~= 1 then
			return false
	end
	
	-- 判断变量"count2"为1
	if ScriptLib.GetGroupVariableValue(context, "count2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_292003(context, evt)
	-- 创建id为292001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 292001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end