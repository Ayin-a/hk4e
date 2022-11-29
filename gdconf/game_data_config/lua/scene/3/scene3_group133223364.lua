-- 基础信息
local base_info = {
	group_id = 133223364
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
	{ config_id = 364001, gadget_id = 70220091, pos = { x = -6209.024, y = 225.782, z = -2505.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 364004, gadget_id = 70220089, pos = { x = -6216.045, y = 230.845, z = -2477.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1364003, name = "ANY_GADGET_DIE_364003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_364003", action = "action_EVENT_ANY_GADGET_DIE_364003", trigger_count = 0 },
	{ config_id = 1364005, name = "ANY_GADGET_DIE_364005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_364005", action = "action_EVENT_ANY_GADGET_DIE_364005", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 364002, gadget_id = 70330114, pos = { x = -6219.352, y = 233.155, z = -2469.643 }, rot = { x = 9.485, y = 164.954, z = 100.387 }, level = 1, area_id = 18 },
		{ config_id = 364006, gadget_id = 70330105, pos = { x = -6207.161, y = 222.821, z = -2505.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 364007, gadget_id = 70330064, pos = { x = -6201.481, y = 225.582, z = -2514.436 }, rot = { x = 355.777, y = 266.044, z = 351.791 }, level = 1, persistent = true, interact_id = 35, area_id = 18 }
	},
	triggers = {
		{ config_id = 1364008, name = "VARIABLE_CHANGE_364008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_364008", action = "action_EVENT_VARIABLE_CHANGE_364008", trigger_count = 0 },
		{ config_id = 1364009, name = "GROUP_LOAD_364009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_364009", action = "action_EVENT_GROUP_LOAD_364009", trigger_count = 0 }
	}
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
		gadgets = { 364001, 364004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_364003", "ANY_GADGET_DIE_364005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_364003(context, evt)
	if 364001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_364003(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_2_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_2_progress", 1, 133225272) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_364005(context, evt)
	if 364004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_364005(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_2_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_2_progress", 1, 133225272) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end