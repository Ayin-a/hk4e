-- 基础信息
local base_info = {
	group_id = 133308669
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
	{ config_id = 669001, gadget_id = 70211001, pos = { x = -1826.070, y = 213.618, z = 4636.409 }, rot = { x = 6.475, y = 199.868, z = 0.443 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1669002, name = "VARIABLE_CHANGE_669002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_669002", action = "action_EVENT_VARIABLE_CHANGE_669002" },
	-- 保底
	{ config_id = 1669003, name = "GROUP_LOAD_669003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_669003", action = "action_EVENT_GROUP_LOAD_669003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "siyu", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_669002", "GROUP_LOAD_669003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_669002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"siyu"为1
	if ScriptLib.GetGroupVariableValue(context, "siyu") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_669002(context, evt)
	-- 创建id为669001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 669001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_669003(context, evt)
	-- 判断变量"siyu"为1
	if ScriptLib.GetGroupVariableValue(context, "siyu") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_669003(context, evt)
	-- 创建id为669001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 669001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"