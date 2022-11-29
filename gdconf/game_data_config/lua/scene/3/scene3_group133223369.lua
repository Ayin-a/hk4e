-- 基础信息
local base_info = {
	group_id = 133223369
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
	{ config_id = 369001, gadget_id = 70220090, pos = { x = -5993.868, y = 190.411, z = -2582.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 369005, gadget_id = 70220090, pos = { x = -5954.462, y = 197.637, z = -2578.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 369008, gadget_id = 70220089, pos = { x = -5977.599, y = 194.555, z = -2593.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1369003, name = "ANY_GADGET_DIE_369003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_369003", action = "action_EVENT_ANY_GADGET_DIE_369003", trigger_count = 0 },
	{ config_id = 1369006, name = "ANY_GADGET_DIE_369006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_369006", action = "action_EVENT_ANY_GADGET_DIE_369006", trigger_count = 0 },
	{ config_id = 1369009, name = "ANY_GADGET_DIE_369009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_369009", action = "action_EVENT_ANY_GADGET_DIE_369009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 369002, gadget_id = 70330114, pos = { x = -5985.398, y = 179.623, z = -2581.908 }, rot = { x = 308.134, y = 261.464, z = 201.717 }, level = 1, area_id = 18 },
		{ config_id = 369004, gadget_id = 70330114, pos = { x = -5989.874, y = 189.621, z = -2586.746 }, rot = { x = 339.433, y = 89.300, z = 194.880 }, level = 1, area_id = 18 }
	},
	triggers = {
		{ config_id = 1369007, name = "ANY_GADGET_DIE_369007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_369007", trigger_count = 0 },
		{ config_id = 1369010, name = "GROUP_LOAD_369010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_369010", action = "action_EVENT_GROUP_LOAD_369010", trigger_count = 0 }
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
		gadgets = { 369001, 369005, 369008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_369003", "ANY_GADGET_DIE_369006", "ANY_GADGET_DIE_369009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_369003(context, evt)
	if 369001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_369003(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223122) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_3_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_3_progress", 1, 133223502) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_369006(context, evt)
	if 369005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_369006(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223122) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_3_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_3_progress", 1, 133223502) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_369009(context, evt)
	if 369008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_369009(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223122) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_3_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_3_progress", 1, 133223502) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end