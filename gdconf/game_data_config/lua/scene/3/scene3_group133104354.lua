-- 基础信息
local base_info = {
	group_id = 133104354
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
	{ config_id = 354001, gadget_id = 70220008, pos = { x = -33.692, y = 272.396, z = 312.343 }, rot = { x = 1.038, y = 0.069, z = 7.590 }, level = 1, isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 354002, gadget_id = 70220008, pos = { x = -34.158, y = 272.365, z = 306.846 }, rot = { x = 1.790, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 354003, gadget_id = 70220008, pos = { x = -29.060, y = 272.339, z = 309.352 }, rot = { x = 0.895, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 354008, gadget_id = 70211101, pos = { x = -32.185, y = 272.329, z = 309.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1354004, name = "ANY_GADGET_DIE_354004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_354004", action = "action_EVENT_ANY_GADGET_DIE_354004" },
	{ config_id = 1354005, name = "ANY_GADGET_DIE_354005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_354005", action = "action_EVENT_ANY_GADGET_DIE_354005" },
	{ config_id = 1354006, name = "ANY_GADGET_DIE_354006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_354006", action = "action_EVENT_ANY_GADGET_DIE_354006" },
	{ config_id = 1354007, name = "VARIABLE_CHANGE_354007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_354007", action = "action_EVENT_VARIABLE_CHANGE_354007" },
	{ config_id = 1354009, name = "GROUP_LOAD_354009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_354009", action = "action_EVENT_GROUP_LOAD_354009", trigger_count = 0 }
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
		gadgets = { 354001, 354002, 354003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_354004", "ANY_GADGET_DIE_354005", "ANY_GADGET_DIE_354006", "VARIABLE_CHANGE_354007", "GROUP_LOAD_354009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_354004(context, evt)
	if 354003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_354004(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_354005(context, evt)
	if 354001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_354005(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_354006(context, evt)
	if 354002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_354006(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_354007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_354007(context, evt)
	-- 创建id为354008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 354008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_354009(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_354009(context, evt)
	-- 创建id为354008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 354008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end