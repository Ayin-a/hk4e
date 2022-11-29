-- 基础信息
local base_info = {
	group_id = 133102349
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
	{ config_id = 349001, gadget_id = 70211101, pos = { x = 1643.729, y = 200.391, z = 213.941 }, rot = { x = 357.377, y = 180.762, z = 1.471 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 349002, gadget_id = 70220021, pos = { x = 1644.213, y = 200.789, z = 213.520 }, rot = { x = 7.491, y = 331.482, z = 353.595 }, level = 1, isOneoff = true, persistent = true, oneoff_reset_version = 2, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1349003, name = "ANY_GADGET_DIE_349003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_349003", action = "action_EVENT_ANY_GADGET_DIE_349003" },
	{ config_id = 1349004, name = "GADGET_STATE_CHANGE_349004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_349004", action = "action_EVENT_GADGET_STATE_CHANGE_349004", trigger_count = 0 },
	{ config_id = 1349005, name = "GADGET_CREATE_349005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_349005", action = "action_EVENT_GADGET_CREATE_349005", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 349001, 349002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_349003", "GADGET_STATE_CHANGE_349004", "GADGET_CREATE_349005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_349003(context, evt)
	if 349002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_349003(context, evt)
	-- 将configid为 349001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 349001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_349004(context, evt)
	if 349001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_349004(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_349005(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133102349, 349002) == -1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_CREATE_349005(context, evt)
	-- 将configid为 349001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 349001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end