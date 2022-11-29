-- 基础信息
local base_info = {
	group_id = 133104210
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 210006, monster_id = 24010101, pos = { x = 287.053, y = 215.473, z = 209.400 }, rot = { x = 0.000, y = 82.460, z = 0.000 }, level = 19, drop_tag = "遗迹守卫", pose_id = 101, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 210002, gadget_id = 70350006, pos = { x = 284.898, y = 217.650, z = 209.203 }, rot = { x = 0.000, y = 81.900, z = 180.000 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 210004, gadget_id = 70220024, pos = { x = 290.267, y = 216.176, z = 210.176 }, rot = { x = 45.562, y = 265.042, z = 4.319 }, level = 19, isOneoff = true, persistent = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1210001, name = "GADGET_CREATE_210001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_210001", action = "action_EVENT_GADGET_CREATE_210001", trigger_count = 0 },
	{ config_id = 1210003, name = "ANY_MONSTER_DIE_210003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_210003", action = "action_EVENT_ANY_MONSTER_DIE_210003" },
	{ config_id = 1210005, name = "ANY_GADGET_DIE_210005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_210005", action = "action_EVENT_ANY_GADGET_DIE_210005", trigger_count = 0 },
	{ config_id = 1210007, name = "GADGET_CREATE_210007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_210007", action = "action_EVENT_GADGET_CREATE_210007", trigger_count = 0 },
	{ config_id = 1210009, name = "VARIABLE_CHANGE_210009", event = EventType.EVENT_VARIABLE_CHANGE, source = "isActive", condition = "condition_EVENT_VARIABLE_CHANGE_210009", action = "action_EVENT_VARIABLE_CHANGE_210009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true },
	{ config_id = 2, name = "isFinished", value = 0, no_refresh = true }
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
		gadgets = { 210002, 210004 },
		regions = { },
		triggers = { "GADGET_CREATE_210001", "ANY_MONSTER_DIE_210003", "ANY_GADGET_DIE_210005", "GADGET_CREATE_210007", "VARIABLE_CHANGE_210009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 210006 },
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
function condition_EVENT_GADGET_CREATE_210001(context, evt)
	if 210002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133104210, 210004) ~= -1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_210001(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_210003(context, evt)
	if 210006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_210003(context, evt)
	-- 将configid为 210002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 210002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133104255中， configid为255001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104255, 255001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133104255中， configid为255002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104255, 255002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_210005(context, evt)
	if 210004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_210005(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_210007(context, evt)
	if 210002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_210007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "isFinished") == 1 then
	ScriptLib.RemoveExtraGroupSuite(context, 133104210, 3)
	ScriptLib.SetGadgetStateByConfigId(context, 210002, GadgetState.GearStart)
	
	else
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104210, 3)
	
	end
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_210009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_210009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104210, 3)
	
	return 0
end