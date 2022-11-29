-- 基础信息
local base_info = {
	group_id = 133310418
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
	{ config_id = 418001, gadget_id = 70330259, pos = { x = -2959.257, y = 8.008, z = 4283.246 }, rot = { x = 0.000, y = 178.260, z = 0.000 }, level = 32, state = GadgetState.Action01, isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 418002, gadget_id = 70330259, pos = { x = -2979.447, y = 9.358, z = 4288.216 }, rot = { x = 0.000, y = 189.521, z = 0.000 }, level = 32, state = GadgetState.Action01, isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 418003, gadget_id = 70330259, pos = { x = -2970.499, y = 12.425, z = 4280.688 }, rot = { x = 0.000, y = 65.385, z = 0.000 }, level = 32, state = GadgetState.Action01, isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 418004, gadget_id = 70330259, pos = { x = -3002.221, y = 11.068, z = 4305.250 }, rot = { x = 0.000, y = 11.357, z = 0.000 }, level = 32, state = GadgetState.Action01, isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 418008, gadget_id = 70330259, pos = { x = -3014.615, y = 12.087, z = 4307.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.Action01, isOneoff = true, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1418005, name = "ANY_GADGET_DIE_418005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_418005", action = "action_EVENT_ANY_GADGET_DIE_418005" },
	{ config_id = 1418006, name = "ANY_GADGET_DIE_418006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_418006", action = "action_EVENT_ANY_GADGET_DIE_418006" },
	{ config_id = 1418007, name = "ANY_GADGET_DIE_418007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_418007", action = "action_EVENT_ANY_GADGET_DIE_418007" },
	{ config_id = 1418009, name = "ANY_GADGET_DIE_418009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_418009", action = "action_EVENT_ANY_GADGET_DIE_418009" },
	{ config_id = 1418010, name = "ANY_GADGET_DIE_418010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_418010", action = "action_EVENT_ANY_GADGET_DIE_418010" },
	{ config_id = 1418011, name = "QUEST_FINISH_418011", event = EventType.EVENT_QUEST_FINISH, source = "7308416", condition = "", action = "action_EVENT_QUEST_FINISH_418011", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 418001, 418002, 418003, 418004, 418008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_418005", "ANY_GADGET_DIE_418006", "ANY_GADGET_DIE_418007", "ANY_GADGET_DIE_418009", "ANY_GADGET_DIE_418010", "QUEST_FINISH_418011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_418005(context, evt)
	if 418001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_418005(context, evt)
	-- 将本组内变量名为 "stone04" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone04", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133310418, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_418006(context, evt)
	if 418002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_418006(context, evt)
	-- 将本组内变量名为 "stone04" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone04", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133310418, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_418007(context, evt)
	if 418003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_418007(context, evt)
	-- 将本组内变量名为 "stone04" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone04", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133310418, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_418009(context, evt)
	if 418004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_418009(context, evt)
	-- 将本组内变量名为 "stone04" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone04", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133310418, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_418010(context, evt)
	if 418008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_418010(context, evt)
	-- 将本组内变量名为 "stone04" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone04", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133310418, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_418011(context, evt)
	-- 将configid为 418001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 418001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 418002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 418002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 418003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 418003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 418004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 418004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 418008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 418008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end