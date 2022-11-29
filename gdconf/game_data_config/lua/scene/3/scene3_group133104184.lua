-- 基础信息
local base_info = {
	group_id = 133104184
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
	{ config_id = 670, gadget_id = 70300106, pos = { x = 360.787, y = 204.450, z = 583.805 }, rot = { x = 0.000, y = 4.564, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 671, gadget_id = 70300106, pos = { x = 363.695, y = 204.251, z = 585.548 }, rot = { x = 0.000, y = 44.397, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 672, gadget_id = 70300106, pos = { x = 362.824, y = 204.675, z = 580.984 }, rot = { x = 0.000, y = 336.062, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 673, gadget_id = 70211111, pos = { x = 362.723, y = 204.495, z = 583.398 }, rot = { x = 3.189, y = 54.720, z = 7.556 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000321, name = "ANY_GADGET_DIE_321", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_321", action = "action_EVENT_ANY_GADGET_DIE_321" },
	{ config_id = 1000322, name = "ANY_GADGET_DIE_322", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_322", action = "action_EVENT_ANY_GADGET_DIE_322" },
	{ config_id = 1000323, name = "ANY_GADGET_DIE_323", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_323", action = "action_EVENT_ANY_GADGET_DIE_323" },
	{ config_id = 1000324, name = "VARIABLE_CHANGE_324", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_324", action = "action_EVENT_VARIABLE_CHANGE_324" }
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
		gadgets = { 670, 671, 672 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_321", "ANY_GADGET_DIE_322", "ANY_GADGET_DIE_323", "VARIABLE_CHANGE_324" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_321(context, evt)
	if 672 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_321(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_322(context, evt)
	if 670 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_322(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_323(context, evt)
	if 671 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_323(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_324(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_324(context, evt)
	-- 创建id为673的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 673 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end