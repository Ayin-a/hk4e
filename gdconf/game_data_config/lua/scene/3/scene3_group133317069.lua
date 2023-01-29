-- 基础信息
local base_info = {
	group_id = 133317069
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
	{ config_id = 69004, gadget_id = 70360022, pos = { x = 775.897, y = 216.344, z = 6136.935 }, rot = { x = 36.802, y = 328.761, z = 26.055 }, level = 32, area_id = 30 },
	{ config_id = 69005, gadget_id = 70220013, pos = { x = 775.897, y = 216.344, z = 6136.935 }, rot = { x = 36.802, y = 328.761, z = 26.055 }, level = 32, area_id = 30 },
	{ config_id = 69006, gadget_id = 70900440, pos = { x = 767.348, y = 199.629, z = 6153.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 69009, gadget_id = 70710010, pos = { x = 774.090, y = 200.000, z = 6155.258 }, rot = { x = 0.000, y = 78.818, z = 0.000 }, level = 32, route_id = 331700008, start_route = false, area_id = 30 },
	{ config_id = 69010, gadget_id = 70360014, pos = { x = 768.979, y = 200.699, z = 6152.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331700005, area_id = 30 },
	{ config_id = 69011, gadget_id = 70360014, pos = { x = 768.979, y = 200.699, z = 6152.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331700006, area_id = 30 },
	{ config_id = 69012, gadget_id = 70360014, pos = { x = 768.979, y = 200.699, z = 6152.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331700007, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1069001, name = "ANY_GADGET_DIE_69001", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_69001", action = "action_EVENT_ANY_GADGET_DIE_69001", trigger_count = 0 },
	{ config_id = 1069002, name = "ANY_GADGET_DIE_69002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_69002", action = "action_EVENT_ANY_GADGET_DIE_69002", trigger_count = 0 },
	{ config_id = 1069003, name = "ANY_GADGET_DIE_69003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_69003", action = "action_EVENT_ANY_GADGET_DIE_69003", trigger_count = 0 },
	{ config_id = 1069007, name = "ANY_GADGET_DIE_69007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_69007", action = "action_EVENT_ANY_GADGET_DIE_69007" },
	{ config_id = 1069008, name = "GADGET_STATE_CHANGE_69008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69008", action = "action_EVENT_GADGET_STATE_CHANGE_69008" },
	{ config_id = 1069013, name = "VARIABLE_CHANGE_69013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_69013", action = "action_EVENT_VARIABLE_CHANGE_69013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false },
	{ config_id = 2, name = "fost", value = 0, no_refresh = true }
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
		gadgets = { 69004, 69005, 69006, 69009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_69001", "ANY_GADGET_DIE_69002", "ANY_GADGET_DIE_69003", "ANY_GADGET_DIE_69007", "GADGET_STATE_CHANGE_69008", "VARIABLE_CHANGE_69013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 69010, 69011, 69012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_GADGET_DIE_69001(context, evt)
	if 69010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_69001(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_69002(context, evt)
	if 69011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_69002(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_69003(context, evt)
	if 69012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_69003(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_69007(context, evt)
	if 69005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_69007(context, evt)
	-- 将configid为 69004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_69008(context, evt)
	if 69004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_69008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133317069, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_69013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_69013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7332001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133317069, EntityType.GADGET, 69006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 69009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "fost2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fost2", 1, 133317032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end