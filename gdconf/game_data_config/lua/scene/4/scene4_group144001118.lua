-- 基础信息
local base_info = {
	group_id = 144001118
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
	{ config_id = 118001, gadget_id = 70220032, pos = { x = 709.773, y = 120.045, z = 260.672 }, rot = { x = 0.000, y = 271.665, z = 0.000 }, level = 20, area_id = 102 },
	{ config_id = 118002, gadget_id = 70360001, pos = { x = 757.331, y = 192.707, z = 283.305 }, rot = { x = 0.000, y = 251.807, z = 0.000 }, level = 20, showcutscene = true, isOneoff = true, persistent = true, area_id = 102 },
	{ config_id = 118003, gadget_id = 70690010, pos = { x = 709.964, y = 122.301, z = 261.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 118008, gadget_id = 70690001, pos = { x = 709.480, y = 168.352, z = 260.804 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 118009, gadget_id = 70690001, pos = { x = 709.480, y = 174.931, z = 260.804 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 118010, gadget_id = 70690001, pos = { x = 709.480, y = 180.558, z = 260.804 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 118011, gadget_id = 70690001, pos = { x = 709.480, y = 186.200, z = 260.804 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 118012, gadget_id = 70690001, pos = { x = 709.480, y = 191.419, z = 260.804 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 118013, gadget_id = 70690001, pos = { x = 709.480, y = 196.485, z = 260.804 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1118004, name = "GADGET_STATE_CHANGE_118004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118004", action = "action_EVENT_GADGET_STATE_CHANGE_118004", trigger_count = 0 },
	{ config_id = 1118005, name = "GADGET_STATE_CHANGE_118005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118005", action = "action_EVENT_GADGET_STATE_CHANGE_118005", trigger_count = 0 },
	{ config_id = 1118006, name = "GADGET_CREATE_118006", event = EventType.EVENT_GADGET_CREATE, source = "111", condition = "condition_EVENT_GADGET_CREATE_118006", action = "action_EVENT_GADGET_CREATE_118006", trigger_count = 0 },
	{ config_id = 1118007, name = "GROUP_LOAD_118007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_118007", action = "action_EVENT_GROUP_LOAD_118007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "baodi", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_118007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 118001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_118004", "GADGET_STATE_CHANGE_118005", "GADGET_CREATE_118006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 118003, 118008, 118009, 118010, 118011, 118012, 118013 },
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
function condition_EVENT_GADGET_STATE_CHANGE_118004(context, evt)
	if 118001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1009, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001118, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118005(context, evt)
	if 118001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118005(context, evt)
	-- 将configid为 118002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 118002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1009, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001118, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_118006(context, evt)
	if 118001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_118006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001118, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_118007(context, evt)
	-- 判断变量"baodi"为1
	if ScriptLib.GetGroupVariableValue(context, "baodi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_118007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001118, 2)
	
	return 0
end