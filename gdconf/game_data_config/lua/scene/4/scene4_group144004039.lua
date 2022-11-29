-- 基础信息
local base_info = {
	group_id = 144004039
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
	{ config_id = 39001, gadget_id = 70620002, pos = { x = -736.419, y = 147.376, z = 38.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, isOneoff = true, persistent = true, area_id = 103 },
	{ config_id = 39002, gadget_id = 70211111, pos = { x = -736.432, y = 150.286, z = 38.210 }, rot = { x = 0.000, y = 0.000, z = 180.503 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 39007, gadget_id = 70220032, pos = { x = -735.791, y = 123.465, z = 38.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 39009, gadget_id = 70690013, pos = { x = -736.336, y = 123.763, z = 38.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1039003, name = "GADGET_STATE_CHANGE_39003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39003", action = "action_EVENT_GADGET_STATE_CHANGE_39003" },
	{ config_id = 1039004, name = "GADGET_STATE_CHANGE_39004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39004", action = "action_EVENT_GADGET_STATE_CHANGE_39004" },
	{ config_id = 1039005, name = "GADGET_CREATE_39005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_39005", action = "action_EVENT_GADGET_CREATE_39005", trigger_count = 0 },
	{ config_id = 1039006, name = "GADGET_CREATE_39006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_39006", action = "action_EVENT_GADGET_CREATE_39006", trigger_count = 0 },
	{ config_id = 1039008, name = "GADGET_STATE_CHANGE_39008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39008", action = "action_EVENT_GADGET_STATE_CHANGE_39008", trigger_count = 0 },
	{ config_id = 1039010, name = "GADGET_STATE_CHANGE_39010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39010", action = "action_EVENT_GADGET_STATE_CHANGE_39010", trigger_count = 0 }
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
		gadgets = { 39001, 39002, 39007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_39003", "GADGET_CREATE_39005", "GADGET_CREATE_39006", "GADGET_STATE_CHANGE_39008", "GADGET_STATE_CHANGE_39010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 39001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_39004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 39009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_39003(context, evt)
	if 39002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39003(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144004039, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39004(context, evt)
	if 39001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39004(context, evt)
	-- 将configid为 39002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_39005(context, evt)
	if 39001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_39005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004039, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_39006(context, evt)
	if 39001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_39006(context, evt)
	-- 将configid为 39002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39008(context, evt)
	if 39007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004039, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39010(context, evt)
	if 39007 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39010(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004039, 3)
	
	return 0
end