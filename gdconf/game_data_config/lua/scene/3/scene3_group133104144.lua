-- 基础信息
local base_info = {
	group_id = 133104144
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
	{ config_id = 467, gadget_id = 70220032, pos = { x = 214.998, y = 239.195, z = 156.824 }, rot = { x = 0.000, y = 218.673, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 468, gadget_id = 70690001, pos = { x = 206.317, y = 239.806, z = 167.786 }, rot = { x = 0.000, y = 334.512, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 469, gadget_id = 70690001, pos = { x = 197.683, y = 239.369, z = 182.696 }, rot = { x = 0.000, y = 330.596, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 473, gadget_id = 70211111, pos = { x = 188.317, y = 238.082, z = 198.814 }, rot = { x = 348.485, y = 170.755, z = 0.026 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000242, name = "GADGET_STATE_CHANGE_242", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_242", action = "action_EVENT_GADGET_STATE_CHANGE_242", trigger_count = 0 },
	{ config_id = 1144001, name = "GADGET_STATE_CHANGE_144001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144001", action = "action_EVENT_GADGET_STATE_CHANGE_144001", trigger_count = 0 },
	{ config_id = 1144002, name = "GADGET_STATE_CHANGE_144002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144002", action = "action_EVENT_GADGET_STATE_CHANGE_144002" },
	{ config_id = 1144003, name = "GADGET_CREATE_144003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_144003", action = "action_EVENT_GADGET_CREATE_144003", trigger_count = 0 },
	{ config_id = 1144004, name = "GADGET_STATE_CHANGE_144004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144004", action = "action_EVENT_GADGET_STATE_CHANGE_144004", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 467 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_242", "GADGET_STATE_CHANGE_144001", "GADGET_STATE_CHANGE_144002", "GADGET_STATE_CHANGE_144004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 468, 469, 473 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_144003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_242(context, evt)
	if 467 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_242(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104144, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144001(context, evt)
	if 467 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144001(context, evt)
	-- 将configid为 473 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 473, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144002(context, evt)
	if 473 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144002(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_144003(context, evt)
	if 467 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_144003(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104144, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144004(context, evt)
	if 467 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104144, 2)
	
	return 0
end