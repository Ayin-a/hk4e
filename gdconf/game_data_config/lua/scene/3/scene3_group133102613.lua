-- 基础信息
local base_info = {
	group_id = 133102613
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
	{ config_id = 613001, gadget_id = 70220008, pos = { x = 1571.591, y = 259.809, z = -14.124 }, rot = { x = 359.672, y = 0.012, z = 355.750 }, level = 16, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 613002, gadget_id = 70220008, pos = { x = 1566.158, y = 260.194, z = -8.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 613003, gadget_id = 70220008, pos = { x = 1563.090, y = 260.503, z = -18.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 613004, gadget_id = 70211111, pos = { x = 1567.030, y = 259.719, z = -13.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1613005, name = "ANY_GADGET_DIE_613005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_613005", action = "action_EVENT_ANY_GADGET_DIE_613005" },
	{ config_id = 1613006, name = "ANY_GADGET_DIE_613006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_613006", action = "action_EVENT_ANY_GADGET_DIE_613006" },
	{ config_id = 1613007, name = "ANY_GADGET_DIE_613007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_613007", action = "action_EVENT_ANY_GADGET_DIE_613007" },
	{ config_id = 1613008, name = "VARIABLE_CHANGE_613008", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_613008", action = "action_EVENT_VARIABLE_CHANGE_613008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 613001, 613002, 613003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_613005", "ANY_GADGET_DIE_613006", "ANY_GADGET_DIE_613007", "VARIABLE_CHANGE_613008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_613005(context, evt)
	if 613003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_613005(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_613006(context, evt)
	if 613002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_613006(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_613007(context, evt)
	if 613001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_613007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_613008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_613008(context, evt)
	-- 创建id为613004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 613004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end