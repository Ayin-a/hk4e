-- 基础信息
local base_info = {
	group_id = 133102582
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
	{ config_id = 582001, gadget_id = 70211101, pos = { x = 1423.892, y = 210.491, z = 119.331 }, rot = { x = 37.294, y = 338.959, z = 13.269 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 582002, gadget_id = 70220021, pos = { x = 1422.102, y = 208.809, z = 120.059 }, rot = { x = 0.000, y = 113.939, z = 0.000 }, level = 16, isOneoff = true, persistent = true, oneoff_reset_version = 2, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1582003, name = "ANY_GADGET_DIE_582003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582003", action = "action_EVENT_ANY_GADGET_DIE_582003" },
	{ config_id = 1582004, name = "GADGET_STATE_CHANGE_582004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_582004", action = "action_EVENT_GADGET_STATE_CHANGE_582004", trigger_count = 0 },
	{ config_id = 1582005, name = "GADGET_CREATE_582005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_582005", action = "action_EVENT_GADGET_CREATE_582005", trigger_count = 0 }
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
		gadgets = { 582001, 582002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_582003", "GADGET_STATE_CHANGE_582004", "GADGET_CREATE_582005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582003(context, evt)
	if 582002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582003(context, evt)
	-- 将configid为 582001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582001, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_582004(context, evt)
	if 582001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_582004(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_582005(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133102582, 582002) == -1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_CREATE_582005(context, evt)
	-- 将configid为 582001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end