-- 基础信息
local base_info = {
	group_id = 133310143
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
	[143001] = { config_id = 143001, gadget_id = 70330259, pos = { x = -3231.929, y = 287.160, z = 4748.946 }, rot = { x = 0.000, y = 325.402, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	[143003] = { config_id = 143003, gadget_id = 70290308, pos = { x = -3216.032, y = 277.115, z = 4752.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	[143004] = { config_id = 143004, gadget_id = 70290308, pos = { x = -3217.604, y = 277.628, z = 4753.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	[143005] = { config_id = 143005, gadget_id = 70290308, pos = { x = -3213.679, y = 276.078, z = 4753.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	[143008] = { config_id = 143008, gadget_id = 70290308, pos = { x = -3216.831, y = 277.271, z = 4754.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	[143009] = { config_id = 143009, gadget_id = 70290308, pos = { x = -3217.682, y = 277.888, z = 4751.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 }
}

-- 区域
regions = {
	[143002] = { config_id = 143002, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3194.069, y = 276.148, z = 4756.884 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1143002, name = "ENTER_REGION_143002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_143002", action = "action_EVENT_ENTER_REGION_143002", trigger_count = 0 },
	{ config_id = 1143006, name = "ANY_GADGET_DIE_143006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_143006", action = "action_EVENT_ANY_GADGET_DIE_143006", trigger_count = 0 },
	{ config_id = 1143007, name = "VARIABLE_CHANGE_143007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_143007", action = "action_EVENT_VARIABLE_CHANGE_143007" },
	{ config_id = 1143010, name = "GROUP_LOAD_143010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_143010", action = "action_EVENT_GROUP_LOAD_143010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "boomcount", value = 5, no_refresh = true }
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
		gadgets = { 143001 },
		regions = { 143002 },
		triggers = { "ENTER_REGION_143002", "ANY_GADGET_DIE_143006", "VARIABLE_CHANGE_143007", "GROUP_LOAD_143010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 143003, 143004, 143005, 143008, 143009 },
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
function condition_EVENT_ENTER_REGION_143002(context, evt)
	if evt.param1 ~= 143002 then return false end
	
	-- 判断变量"boomcount"为5
	if ScriptLib.GetGroupVariableValue(context, "boomcount") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_143002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310143, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_143006(context, evt)
	if 143004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_143006(context, evt)
	-- 将本组内变量名为 "boomcount" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "boomcount", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_143007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"boomcount"为0
	if ScriptLib.GetGroupVariableValue(context, "boomcount") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_143007(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133310143, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_143010(context, evt)
	-- 判断变量"boomcount"为0
	if ScriptLib.GetGroupVariableValue(context, "boomcount") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_143010(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133310143, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end