-- 基础信息
local base_info = {
	group_id = 133106042
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
	{ config_id = 42001, gadget_id = 70800054, pos = { x = -833.325, y = 155.493, z = 1171.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action01, area_id = 8 },
	{ config_id = 42002, gadget_id = 70290196, pos = { x = -838.940, y = 155.200, z = 1171.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1042003, name = "GROUP_LOAD_42003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_42003", action = "action_EVENT_GROUP_LOAD_42003" },
	{ config_id = 1042004, name = "VARIABLE_CHANGE_42004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_42004", action = "action_EVENT_VARIABLE_CHANGE_42004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "stage", value = 0, no_refresh = true }
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
		gadgets = { 42002 },
		regions = { },
		triggers = { "GROUP_LOAD_42003", "VARIABLE_CHANGE_42004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_42003(context, evt)
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_42003(context, evt)
	-- 创建id为42001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 42001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_42004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_42004(context, evt)
	-- 创建id为42001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 42001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end