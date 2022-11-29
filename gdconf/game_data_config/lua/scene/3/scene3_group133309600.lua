-- 基础信息
local base_info = {
	group_id = 133309600
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
	{ config_id = 600001, gadget_id = 70330426, pos = { x = -2149.508, y = -46.280, z = 5873.660 }, rot = { x = 8.580, y = 359.249, z = 350.010 }, level = 32, area_id = 27 },
	{ config_id = 600002, gadget_id = 70330426, pos = { x = -2149.384, y = -46.500, z = 5874.955 }, rot = { x = 8.580, y = 359.249, z = 350.010 }, level = 32, area_id = 27 },
	{ config_id = 600003, gadget_id = 70330426, pos = { x = -2149.197, y = -46.770, z = 5876.502 }, rot = { x = 8.580, y = 359.249, z = 350.010 }, level = 32, area_id = 27 },
	{ config_id = 600004, gadget_id = 70330426, pos = { x = -2148.979, y = -47.074, z = 5878.235 }, rot = { x = 8.580, y = 359.249, z = 350.010 }, level = 32, area_id = 27 },
	{ config_id = 600010, gadget_id = 70330342, pos = { x = -2150.503, y = -45.367, z = 5884.437 }, rot = { x = 345.898, y = 308.223, z = 339.690 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1600005, name = "GROUP_LOAD_600005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_600005", action = "action_EVENT_GROUP_LOAD_600005", trigger_count = 0 },
	{ config_id = 1600006, name = "ANY_GADGET_DIE_600006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_600006", action = "action_EVENT_ANY_GADGET_DIE_600006" },
	{ config_id = 1600007, name = "ANY_GADGET_DIE_600007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_600007", action = "action_EVENT_ANY_GADGET_DIE_600007" },
	{ config_id = 1600008, name = "ANY_GADGET_DIE_600008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_600008", action = "action_EVENT_ANY_GADGET_DIE_600008" },
	{ config_id = 1600009, name = "VARIABLE_CHANGE_600009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_600009", action = "action_EVENT_VARIABLE_CHANGE_600009" },
	{ config_id = 1600011, name = "ANY_GADGET_DIE_600011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_600011", action = "action_EVENT_ANY_GADGET_DIE_600011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = true }
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
		gadgets = { 600001, 600002, 600003, 600004 },
		regions = { },
		triggers = { "GROUP_LOAD_600005", "ANY_GADGET_DIE_600006", "ANY_GADGET_DIE_600007", "ANY_GADGET_DIE_600008", "VARIABLE_CHANGE_600009", "ANY_GADGET_DIE_600011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_600005(context, evt)
	-- 判断变量"default"为4
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_600005(context, evt)
	-- 创建id为600010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 600010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_600006(context, evt)
	if 600002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_600006(context, evt)
	-- 针对当前group内变量名为 "default" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_600007(context, evt)
	if 600003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_600007(context, evt)
	-- 针对当前group内变量名为 "default" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_600008(context, evt)
	if 600004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_600008(context, evt)
	-- 针对当前group内变量名为 "default" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_600009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"default"为4
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_600009(context, evt)
	-- 创建id为600010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 600010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_600011(context, evt)
	if 600001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_600011(context, evt)
	-- 针对当前group内变量名为 "default" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end