-- 基础信息
local base_info = {
	group_id = 133008449
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
	{ config_id = 449001, gadget_id = 70620002, pos = { x = 1521.423, y = 270.428, z = -635.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 449002, gadget_id = 70500000, pos = { x = 1521.592, y = 272.022, z = -635.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4003, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 10 },
	{ config_id = 449006, gadget_id = 70900364, pos = { x = 1512.375, y = 266.100, z = -651.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 449007, gadget_id = 70900364, pos = { x = 1526.755, y = 268.387, z = -631.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 449008, gadget_id = 70900364, pos = { x = 1502.522, y = 266.100, z = -634.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1449003, name = "GATHER_449003", event = EventType.EVENT_GATHER, source = "449002", condition = "", action = "action_EVENT_GATHER_449003" },
	{ config_id = 1449004, name = "GADGET_STATE_CHANGE_449004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_449004", action = "action_EVENT_GADGET_STATE_CHANGE_449004" },
	{ config_id = 1449005, name = "GADGET_CREATE_449005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_449005", action = "action_EVENT_GADGET_CREATE_449005", trigger_count = 0 }
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
		gadgets = { 449001, 449002, 449006, 449007, 449008 },
		regions = { },
		triggers = { "GATHER_449003", "GADGET_CREATE_449005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 449001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_449004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_449003(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133008449, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_449004(context, evt)
	if 449001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_449004(context, evt)
	-- 将configid为 449002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 449002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_449005(context, evt)
	if 449001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_449005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008449, 2)
	
	return 0
end