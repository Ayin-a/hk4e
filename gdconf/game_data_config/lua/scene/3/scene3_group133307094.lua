-- 基础信息
local base_info = {
	group_id = 133307094
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
	{ config_id = 94001, gadget_id = 70211101, pos = { x = -2235.468, y = 161.634, z = 4703.209 }, rot = { x = 1.214, y = 310.524, z = 351.759 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 94002, gadget_id = 70330266, pos = { x = -2235.443, y = 161.861, z = 4703.036 }, rot = { x = 21.241, y = 319.256, z = 339.942 }, level = 32, area_id = 26 },
	{ config_id = 94005, gadget_id = 70360001, pos = { x = -2235.633, y = 162.816, z = 4703.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 94007, gadget_id = 70330266, pos = { x = -2202.663, y = 158.765, z = 4698.935 }, rot = { x = 26.517, y = 5.643, z = 353.698 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1094003, name = "ANY_GADGET_DIE_94003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94003", action = "action_EVENT_ANY_GADGET_DIE_94003" },
	{ config_id = 1094004, name = "GADGET_STATE_CHANGE_94004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_94004", action = "action_EVENT_GADGET_STATE_CHANGE_94004", trigger_count = 0 },
	{ config_id = 1094006, name = "GROUP_LOAD_94006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_94006", action = "action_EVENT_GROUP_LOAD_94006", trigger_count = 0 }
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
		gadgets = { 94001, 94002, 94005, 94007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_94003", "GADGET_STATE_CHANGE_94004", "GROUP_LOAD_94006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_94003(context, evt)
	if 94002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_94003(context, evt)
	-- 将configid为 94001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_94004(context, evt)
	if 94001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_94004(context, evt)
	-- 将configid为 94005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_94006(context, evt)
	-- 判断指定group组指定gadget是否存在 
	return not ScriptLib.CheckIsInGroup(context, 133307094, 94001)
end

-- 触发操作
function action_EVENT_GROUP_LOAD_94006(context, evt)
	-- 将configid为 94005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end