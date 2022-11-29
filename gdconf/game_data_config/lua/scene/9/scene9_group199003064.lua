-- 基础信息
local base_info = {
	group_id = 199003064
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
	{ config_id = 64001, gadget_id = 70220032, pos = { x = -739.261, y = 130.897, z = -243.396 }, rot = { x = 0.000, y = 352.845, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 64002, gadget_id = 70690013, pos = { x = -741.927, y = 116.413, z = -233.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1064003, name = "GADGET_CREATE_64003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_64003", action = "action_EVENT_GADGET_CREATE_64003", trigger_count = 0 },
	{ config_id = 1064004, name = "GADGET_STATE_CHANGE_64004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64004", action = "action_EVENT_GADGET_STATE_CHANGE_64004", trigger_count = 0 },
	{ config_id = 1064005, name = "GADGET_STATE_CHANGE_64005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64005", action = "action_EVENT_GADGET_STATE_CHANGE_64005", trigger_count = 0 }
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
		gadgets = { 64001 },
		regions = { },
		triggers = { "GADGET_CREATE_64003", "GADGET_STATE_CHANGE_64004", "GADGET_STATE_CHANGE_64005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 64002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_64003(context, evt)
	if 64001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_64003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199003064, EntityType.GADGET, 64002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64004(context, evt)
	if 64001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1009, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003064, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64005(context, evt)
	if 64001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64005(context, evt)
	-- 将configid为 64002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1009, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003064, 2)
	
	return 0
end