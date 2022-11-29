-- 基础信息
local base_info = {
	group_id = 133106521
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
	{ config_id = 521001, gadget_id = 70360007, pos = { x = -537.348, y = 179.116, z = 1879.286 }, rot = { x = 357.922, y = 196.098, z = 0.107 }, level = 19, area_id = 19 },
	{ config_id = 521002, gadget_id = 70211101, pos = { x = -586.075, y = 186.409, z = 1804.029 }, rot = { x = 338.965, y = 61.249, z = 21.243 }, level = 26, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 521007, gadget_id = 70690001, pos = { x = -576.362, y = 185.962, z = 1815.462 }, rot = { x = 0.000, y = 221.125, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 521008, gadget_id = 70690001, pos = { x = -558.009, y = 185.962, z = 1836.481 }, rot = { x = 0.000, y = 221.125, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 521009, gadget_id = 70690001, pos = { x = -569.073, y = 185.962, z = 1823.809 }, rot = { x = 0.000, y = 221.125, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 521010, gadget_id = 70290200, pos = { x = -545.457, y = 178.360, z = 1860.731 }, rot = { x = 357.327, y = 358.712, z = 0.193 }, level = 36, area_id = 19 },
	{ config_id = 521011, gadget_id = 70290200, pos = { x = -524.769, y = 179.188, z = 1849.238 }, rot = { x = 353.067, y = 98.549, z = 355.078 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1521004, name = "GADGET_STATE_CHANGE_521004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_521004", action = "action_EVENT_GADGET_STATE_CHANGE_521004", trigger_count = 0 },
	{ config_id = 1521005, name = "GADGET_STATE_CHANGE_521005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_521005", action = "action_EVENT_GADGET_STATE_CHANGE_521005", trigger_count = 0 },
	{ config_id = 1521006, name = "GADGET_CREATE_521006", event = EventType.EVENT_GADGET_CREATE, source = "111", condition = "condition_EVENT_GADGET_CREATE_521006", action = "action_EVENT_GADGET_CREATE_521006", trigger_count = 0 }
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
		gadgets = { 521001, 521010, 521011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_521004", "GADGET_STATE_CHANGE_521005", "GADGET_CREATE_521006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 521002, 521007, 521008, 521009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_521004(context, evt)
	if 521001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_521004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106521, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_521005(context, evt)
	if 521001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_521005(context, evt)
	-- 将configid为 521002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 521002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106521, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_521006(context, evt)
	if 521001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_521006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106521, 2)
	
	return 0
end