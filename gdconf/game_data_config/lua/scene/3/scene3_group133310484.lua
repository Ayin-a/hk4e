-- 基础信息
local base_info = {
	group_id = 133310484
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
	{ config_id = 484001, gadget_id = 70211102, pos = { x = -3020.036, y = 115.452, z = 4467.432 }, rot = { x = 32.176, y = 254.833, z = 2.602 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 484002, gadget_id = 70330259, pos = { x = -3022.268, y = 115.385, z = 4472.622 }, rot = { x = 11.789, y = 231.272, z = 12.327 }, level = 19, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 484005, gadget_id = 70330259, pos = { x = -3017.342, y = 115.203, z = 4462.822 }, rot = { x = 348.313, y = 43.849, z = 17.023 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1484003, name = "ANY_GADGET_DIE_484003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_484003", action = "action_EVENT_ANY_GADGET_DIE_484003", trigger_count = 0 },
	{ config_id = 1484006, name = "ANY_GADGET_DIE_484006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_484006", action = "action_EVENT_ANY_GADGET_DIE_484006" },
	{ config_id = 1484007, name = "ANY_GADGET_DIE_484007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_484007", action = "action_EVENT_ANY_GADGET_DIE_484007" },
	{ config_id = 1484008, name = "QUEST_FINISH_484008", event = EventType.EVENT_QUEST_FINISH, source = "7308416", condition = "", action = "action_EVENT_QUEST_FINISH_484008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1484004, name = "GADGET_STATE_CHANGE_484004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_484004", action = "action_EVENT_GADGET_STATE_CHANGE_484004", trigger_count = 0 }
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
		gadgets = { 484001, 484002, 484005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_484003", "ANY_GADGET_DIE_484006", "ANY_GADGET_DIE_484007", "QUEST_FINISH_484008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_484003(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133310484}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_484003(context, evt)
	-- 将configid为 484001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 484001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_484006(context, evt)
	if 484002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_484006(context, evt)
	-- 将本组内变量名为 "stone05" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone05", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 484005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_484007(context, evt)
	if 484005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_484007(context, evt)
	-- 将本组内变量名为 "stone05" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone05", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 484002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_484008(context, evt)
	-- 将configid为 484002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 484002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 484005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 484005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end