-- 基础信息
local base_info = {
	group_id = 133223366
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
	{ config_id = 366001, gadget_id = 70220089, pos = { x = -6166.281, y = 224.817, z = -2450.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 366004, gadget_id = 70220090, pos = { x = -6196.697, y = 227.335, z = -2458.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1366003, name = "ANY_GADGET_DIE_366003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_366003", action = "action_EVENT_ANY_GADGET_DIE_366003", trigger_count = 0 },
	{ config_id = 1366006, name = "ANY_GADGET_DIE_366006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_366006", action = "action_EVENT_ANY_GADGET_DIE_366006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 366002, gadget_id = 70330114, pos = { x = -6212.072, y = 235.605, z = -2456.323 }, rot = { x = 27.211, y = 107.962, z = 89.757 }, level = 1, area_id = 18 },
		{ config_id = 366005, gadget_id = 70330114, pos = { x = -6193.405, y = 225.637, z = -2456.429 }, rot = { x = 10.435, y = 80.776, z = 77.354 }, level = 1, area_id = 18 }
	},
	triggers = {
		{ config_id = 1366007, name = "ANY_GADGET_DIE_366007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_366007", trigger_count = 0 },
		{ config_id = 1366008, name = "GROUP_LOAD_366008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_366008", action = "action_EVENT_GROUP_LOAD_366008", trigger_count = 0 }
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
		gadgets = { 366001, 366004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_366003", "ANY_GADGET_DIE_366006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_366003(context, evt)
	if 366001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_366003(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_3_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_3_progress", 1, 133225272) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_366006(context, evt)
	if 366004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_366006(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_3_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_3_progress", 1, 133225272) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end